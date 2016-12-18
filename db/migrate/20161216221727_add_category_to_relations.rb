class AddCategoryToRelations < ActiveRecord::Migration[5.0]
  def change
    add_reference :relations, :category, foreign_key: true
  end
end
