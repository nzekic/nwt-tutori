class TutoringTime < ActiveRecord::Base
	#ako je tutor
	belongs_to :ad
	belongs_to :appointments
end
