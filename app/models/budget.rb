class Budget < ActiveRecord::Base
	attr_accessible :name

	belongs_to :application
end
