class CreateCategories < ActiveRecord::Migration[5.0]
  def self.up
    create_table :categories do |t|
      t.string :name
      t.string :url
      t.integer :parent_id, :null => true, :index => true
      t.integer :lft, :null => false, :index => true
      t.integer :rgt, :null => false, :index => true      
    end
  end

  def self.down
    drop_table :categories
  end
end
