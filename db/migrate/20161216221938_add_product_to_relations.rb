class AddProductToRelations < ActiveRecord::Migration[5.0]
  def change
    add_reference :relations, :product, foreign_key: true
  end
end
