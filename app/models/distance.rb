class Distance < ActiveRecord::Base
	attr_accessible :name

	has_may :applications
end
