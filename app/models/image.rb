class Image < ActiveRecord::Base
	attr_accessible :image, :title, :user_id
	belongs_to :user
end
