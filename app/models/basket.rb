class Basket < ApplicationRecord
  has_many :items

  def create
    @basket = Basket.new
  end
end
