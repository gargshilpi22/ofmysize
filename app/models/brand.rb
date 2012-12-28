class Brand < ActiveRecord::Base
  attr_accessible :name, :url

  has_many :product_brands
  has_many :products, through: :product_brands
end