class Item < ApplicationRecord
  belongs_to :store

  validates_presence_of :name, :original_price, :current_price, :quantity, :store_id
end