class Application < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :phone, :email, :question, :questiona, :questionb, :location, :description, :job_id, :trade_id, :budget_id, :jobstartdate_id, :latitude, :longitude, :search
	attr_accessor :current_step, :job_id

	geocoded_by :location
	after_validation :geocode

	# reverse_geocode_by :latitude, :longitude, :location => :location
	# after_validation :reverse_geocode

	belongs_to :job
	belongs_to :trade

	belongs_to :budget
	belongs_to :jobstartdate

	belongs_to :user

	# validates :firstname, presence: true
	# validates :lastname, presence: true
	# validates :phone, presence: true
	# validates :email, presence: true
	#TODO view 217 Multistep Forms Rails cast on validation settings

	def current_step
		@current_step || steps.first	
	end

	def transform_job(j)
		j.scan(/\w+/).join('_').downcase
	end

	def steps
		job = Job.find(@job_id)
		if job.name == "Digital Home Network"
		 %w[digital_home_network budget contact]
		elsif job.name == "Sound & Audio Visual Installation"
			%w[sound_and_audio_visual_installation budget contact]
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

	def transform_postcode(p)
		p.scan(/\w+/).join[0,3]
	end

end