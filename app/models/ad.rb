class Ad < ActiveRecord::Base
	has_many :tutoring_times
	belongs_to :user
	belongs_to :subject
end
