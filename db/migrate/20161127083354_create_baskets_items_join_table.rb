class CreateBasketsItemsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets_items, id: false do |t|
      t.integer :basket_id
      t.integer :item_id
    end
  end
end
