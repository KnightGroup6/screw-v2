class Advert < ActiveRecord::Base
	attr_accessible :image, :title, :content, :website
end
