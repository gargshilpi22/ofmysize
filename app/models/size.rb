class Size < ActiveRecord::Base
  attr_accessible :name, :type

  has_many :product_sizes
  has_many :products, through: :product_sizes
end
