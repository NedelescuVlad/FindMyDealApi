class Basket < ApplicationRecord
  has_many :items

  validates_presence_of :code
end
