class Application < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :phone, :email, :question, :questiona, :questionb, :postcode, :description, :job_id, :trade_id, :budget_id, :jobstartdate_id
	attr_writer :current_step, :job_id

	belongs_to :job
	belongs_to :trade

	belongs_to :budget
	belongs_to :jobstartdate

	# validates :firstname, presence: true
	# validates :lastname, presence: true
	# validates :phone, presence: true
	# validates :email, presence: true
	#TODO view 217 Multistep Forms Rails cast on validation settings

	def current_step
		@current_step || steps.first	
	end

	def steps
		job = Job.find(@job_id)
		if job.name == "Digital Home Network"
		 %w[digital_Home_Network budget contact]
		else
			%w[bathroomInstallation budget contact]
		end
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