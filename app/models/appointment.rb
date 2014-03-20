class Appointment < ActiveRecord::Base
	belongs_to :user
	has_many :tutoring_times
end
