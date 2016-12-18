class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :url
      t.string :price
      t.string :sku
      t.timestamps
    end
  end
end
