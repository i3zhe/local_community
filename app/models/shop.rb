class Shop < ActiveRecord::Base
  attr_accessible :address, :description, :logo, :name, :slogan, :weight, :tags_attributes
  
  validates :name, :presence => true

  has_many :comments, :dependent => :destroy
  has_many :items, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true, 
  									:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

	scope :recommend_shops, where(:is_recommended => true)

end
