class Application < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :phone, :email, :job_id, :trade_id, :budget_id, :jobstartdate_id

	belongs_to :job
	belongs_to :trade

	belongs_to :budget
	belongs_to :jobstartdate

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :phone, presence: true
	validates :email, presence: true
end
