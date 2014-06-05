class Job < ActiveRecord::Base
	attr_accessible :name, :trade_ids

	has_many :jobs_trades
	has_many :trades, through: :jobs_trades

	has_many :applications
	has_many :trades, through: :applications

	validates :name, presence: true
	validates :name, uniqueness: true

	validates :trades, presence: true
end
