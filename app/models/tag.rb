class Tag < ActiveRecord::Base
  belongs_to :shop
  attr_accessible :name
end
