class AddItemsToBaskets < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :basket, foreign_key: true
  end
end
