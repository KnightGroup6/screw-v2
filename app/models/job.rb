class Job < ActiveRecord::Base

	has_many :jobs_trades
  	has_many :trades, through: :jobs_trades
end
