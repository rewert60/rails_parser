namespace :parser do

  desc "Get products"
  task :get_products => :environment do
    require 'mechanize'
    require 'date'
    require 'json'

    def sale
      @cat_sale = Category.first
      cat_url_en = @cat_sale.url + '?___store=en'

      agent = Mechanize.new

      page = agent.get(cat_url_en)

      page.css('.twoban a').each do |link|
        full_link = 'https://www.tvdirect.tv' + link['href'].to_s
        sale_page = agent.get(full_link)

        page_number = 1

        loop do
          page_number += 1
          lien = sale_page.link_with(:text => page_number.to_s)

          sale_page.css('.products-grid .product-name a').each do |product_link|

            @product = Product.new
            @product.url = product_link['href'].to_s
            if @product.valid?
              prod_url = sale_page.link_with(:href => product_link['href'].to_s)
              prod = prod_url.click
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
              @relation = Relation.create!(product_id: @product.id, category_id: @cat_sale.id)
            else
              puts '=========' + @cat_sale.name + '=========='
              @product_orig = Product.where(url: @product.url).first
              @relation = Relation.find_or_create_by(product_id: @product_orig.id, category_id: @cat_sale.id)
            end

          end

          break unless lien
          sale_page = lien.click
          puts "--- #{@cat_sale.name} --- page number #{page_number} ---"
        end
      end
    end

    sale

    agent = Mechanize.new

    @categories = Category.offset(1)
    @categories.each do |c|
      puts '---' + c.name + '---'
      cat_url_en = c.url + '?___store=en'
      page = agent.get(cat_url_en)

      page_number = 1

      loop do
        page_number += 1
        lien = page.link_with(:text => page_number.to_s)

        page.css('.cover_link').each do |product_link|

          @product = Product.new
          @product.url = product_link['href'].to_s
          if @product.valid?
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
            @relation = Relation.create!(product_id: @product.id, category_id: c.id)
          else
            puts '=========' + c.name + '=========='
            @product_orig = Product.where(url: product_link['href'].to_s).first
            puts 'product_orig ' + @product_orig.id.to_s
            puts 'category ' + c.id.to_s
            @relation = Relation.find_or_create_by(product_id: @product_orig.id, category_id: c.id)
          end

        end

        break unless lien
        page = lien.click
        puts "--- #{c.name} --- page number #{page_number} ---"
      end
    end

  end

  desc "Get categories"
  task :get_categories => :environment do
    require 'open-uri'
    require 'nokogiri'

    url = 'https://www.tvdirect.tv/?___store=en&___from_store=th'
    html = open(url)

    doc = Nokogiri::HTML(html)

    links = doc.css('.nav-primary li.level0').each do |link1|
      if link1.to_s.include?('parent')
        link1_name = link1.at_css('a').text
        link1_url = link1.at_css('a')['href']
        puts "#{link1_name} (#{link1_url})"

        @cat_level1 = Category.create!(:name => link1_name, :url => link1_url)

        link1.css('li.subcat li.level1').each do |link2|
          link2_name = link2.at_css('a').text
          link2_url = link2.at_css('a')['href']

          @cat_level2 = Category.create!(:name => link2_name, :url => link2_url)
          @cat_level2.move_to_child_of(@cat_level1)

          puts "-#{link2_name} (#{link2_url})"

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
        link1_name = link1.at_css('a').text
        link1_url = link1.at_css('a')['href']

        @cat_level1 = Category.create!(:name => link1_name, :url => link1_url)

        puts "#{link1_name} (#{link1_url})"
        puts "\n"
      end
    end
  end
end
