namespace :parser do

  desc "Get products"
  task :get_products => :environment do
    require 'mechanize'

    # Метод для перехода по страницам товара и кнопкам пагинации
    def pars_products(category_url, product_dom, category_id, category_name)
      agent = Mechanize.new
      # Получаем страничку с товарами
      page = agent.get(category_url)
      page_number = 1
      loop do
        # На странице находим ссылки на товары
        page.css(product_dom).each do |product_link|
          @product = Product.new
          @product.url = product_link['href'].to_s
          begin
            # Если в базе нет товара с таким URL, выполняем следующии действия
            if @product.valid?
              # Переходим на страницу товара
              prod = agent.get(product_link['href'])
              product_name = prod.css('.product-view .product-shop .product-name .h1').text
              product_url = product_link['href'].to_s
              product_price = prod.css('.product-view .product-shop .price-info
                                          .regular-price .price, .product-view
                                          .product-shop .price-info
                                          .special-price .price').text.gsub(/[,]/, '').to_i.to_s
              product_sku = prod.css('.product-view .product-sku span').text
              puts product_name + "\n" + product_url + "\n" + product_price + "\n" + product_sku
              puts '--------------------'
              @product = Product.create!(:name => product_name, :url => product_url,
                                          :price => product_price, :sku => product_sku)
              # Делаем связь данного товара с данной категорией
              @relation = Relation.create!(product_id: @product.id, category_id: category_id)
            else      # Если такой товар уже есть в базе
              puts "Product already exist in db. Add relation with category '#{category_name}'"
              @product_orig = Product.where(url: @product.url).first
              # Делаем связь уже существующего в базе товара с данной категорией
              @relation = Relation.find_or_create_by(product_id: @product_orig.id, category_id: category_id)
            end
          rescue
            # На случай, когда нет страницы товара и получаем 404
          end
        end
        # Номер страницы на кнопке пагинации, после первой итерации переходим
        # на страницу 2 и тд
        page_number += 1
        lien = page.link_with(:text => page_number.to_s)
        # Если нет кнопки перехода на следующую страницу - выходим из цикла
        break unless lien
        # Переходим на следующую страницу
        page = lien.click
        puts "--- #{category_name} --- page number #{page_number} ---"
      end
    end

    # Метод для парсинга товаров из категории sale
    # Ее подкатегории имеют другой вид, в отличие от остальных подкатегорий
    def sale
      @cat_sale = Category.first
      cat_url_en = @cat_sale.url + '?___store=en'

      agent = Mechanize.new

      page = agent.get(cat_url_en)

      # Находим ссылки на подкатегории
      page.css('.twoban a').each do |link|
        full_link = 'https://www.tvdirect.tv' + link['href'].to_s
        product_dom = '.products-grid .product-name a'

        # Метод для парсинга товаров
        pars_products(full_link, product_dom, @cat_sale.id, @cat_sale.name)

      end
    end

    sale

    # Далее переобходим остальные категории
    agent = Mechanize.new

    @categories = Category.offset(1)
    @categories.each do |c|
      puts '---' + c.name + '---'
      cat_url_en = c.url + '?___store=en'
      product_dom = '.cover_link'

      pars_products(cat_url_en, product_dom, c.id, c.name)

    end

  end

  desc "Get categories"
  task :get_categories => :environment do
    require 'open-uri'
    require 'nokogiri'

    # Английская версия сайта
    url = 'https://www.tvdirect.tv/?___store=en&___from_store=th'
    html = open(url)

    doc = Nokogiri::HTML(html)

    # Находим категории 1-го уровня
    links = doc.css('.nav-primary li.level0').each do |link1|
      # Если категория имеет подкатегории, выполняем следующии действия
      if link1.to_s.include?('parent')
        link1_name = link1.at_css('a').text
        link1_url = link1.at_css('a')['href']
        puts "#{link1_name} (#{link1_url})"

        @cat_level1 = Category.create!(:name => link1_name, :url => link1_url)

        # Находим категории второго уровня
        link1.css('li.subcat li.level1').each do |link2|
          link2_name = link2.at_css('a').text
          link2_url = link2.at_css('a')['href']

          @cat_level2 = Category.create!(:name => link2_name, :url => link2_url)
          @cat_level2.move_to_child_of(@cat_level1)

          puts "-#{link2_name} (#{link2_url})"

          # Находим категории третьего уровня
          link2.css('ul li').each do |link3|
            link3_name = link3.at_css('a').text
            link3_url = link3.at_css('a')['href']

            @cat_level3 = Category.create!(:name => link3_name, :url => link3_url)
            @cat_level3.move_to_child_of(@cat_level2)

            puts "--#{link3_name} (#{link3_url})"

          end
        end
        puts "\n"
      else

        # Если главная категория не имеет подкатегорий
        link1_name = link1.at_css('a').text
        link1_url = link1.at_css('a')['href']

        @cat_level1 = Category.create!(:name => link1_name, :url => link1_url)

        puts "#{link1_name} (#{link1_url})"
        puts "\n"
      end
    end
  end
end
