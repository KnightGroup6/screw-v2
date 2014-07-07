class Trademanprofilepage < ActiveRecord::Base
	attr_accessible :parent_id, :name, :content
	has_ancestry
end
