class Search < ActiveRecord::Base
	attr_accessible :keywords, :latitude, :longitude
	geocoded_by :keywords
	after_validation :geocode

	# def applications
	#   @applications ||= find_applications
	# end

	# def find_applications
	#   Application.find(:all, :conditions => conditions)
	# end

	# def keyword_conditions
	#   ["applications.postcode LIKE ?", "%#{keywords}%"] unless keywords.blank?
	# end

end
