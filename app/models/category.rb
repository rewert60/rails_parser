class Category < ApplicationRecord
  acts_as_nested_set
  has_many :relations
  has_many :products, :through => :relations
end
