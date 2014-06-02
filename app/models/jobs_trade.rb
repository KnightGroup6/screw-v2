class JobsTrade < ActiveRecord::Base

	belongs_to :trade
	belongs_to :job
end
