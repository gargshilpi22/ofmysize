class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :product_categorys
  has_many :products, through: :product_categorys
end
