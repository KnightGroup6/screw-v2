class Trade < ActiveRecord::Base

	has_many :jobs_trades
  	has_many :jobs, through: :jobs_trades
end
