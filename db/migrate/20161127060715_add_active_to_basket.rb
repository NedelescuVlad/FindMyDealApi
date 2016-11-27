class AddActiveToBasket < ActiveRecord::Migration[5.0]
  def change
    add_column :baskets, :active, :boolean, default: true
  end
end
