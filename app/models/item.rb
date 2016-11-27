class Item < ApplicationRecord
  belongs_to :store
  has_and_belongs_to_many :baskets

  validates_presence_of :name, :original_price, :current_price, :quantity, :store_id
end