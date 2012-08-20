class Comment < ActiveRecord::Base
  belongs_to :shop
  attr_accessible :body, :commenter
end
