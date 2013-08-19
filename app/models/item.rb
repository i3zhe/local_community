class Item < ActiveRecord::Base
  attr_accessible :average_rating, :description, :followers, :name, :price, :sold_count, :qty

  belongs_to :shop

  scope :hot_items, order("sold_count desc").limit(10)
end
