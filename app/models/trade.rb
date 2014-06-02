class Trade < ActiveRecord::Base
	attr_accessible :name, :job_ids

	has_many :jobs_trades
  	has_many :jobs, through: :jobs_trades
end
