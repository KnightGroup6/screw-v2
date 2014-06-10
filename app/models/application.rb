class Application < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :phone, :email, :question, :postcode, :description, :job_id, :trade_id, :budget_id, :jobstartdate_id
	attr_writer :current_step

	belongs_to :job
	belongs_to :trade

	belongs_to :budget
	belongs_to :jobstartdate

	# validates :firstname, presence: true
	# validates :lastname, presence: true
	# validates :phone, presence: true
	# validates :email, presence: true

	def current_step
		@current_step || steps.first	
	end

	def steps
		%w[digitalHomeNetwork budget contact]
		#TODO need to write a method stating if user selects spcific trade_id & job_id display _partial_form as the step.first relating to the selected ids	
	end

	def next_step
		self.current_step = steps[steps.index(current_step)+1]	
	end

	def previous_step
		self.current_step = steps[steps.index(current_step)-1]	
	end

	def first_step?
		current_step == steps.first	
	end

	def last_step?
		current_step == steps.last	
	end
end
