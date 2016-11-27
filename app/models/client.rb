class Client < ApplicationRecord
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_uniqueness_of :email

end
