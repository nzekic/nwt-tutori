class Tutor < ActiveRecord::Base
	has_one :user
	has_many :tutor_subjects
	has_many :subjects, through: :tutor_subjects
end
