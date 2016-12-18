class Product < ApplicationRecord
  validates :url, uniqueness: true
  has_many :relations
  has_many :categories, :through => :relations
end
