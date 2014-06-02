class JobsTrade < ActiveRecord::Base
	attr_accessible :job_id, :trade_id

	belongs_to :trade
	belongs_to :job
end
