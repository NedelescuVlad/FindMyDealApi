class Store < ApplicationRecord
  has_many :items

  validates_presence_of :name, :mail, :encrypted_password
end
