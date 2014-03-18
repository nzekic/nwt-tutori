class Member < ActiveRecord::Base
	has_one :user
	has_many :member_subject_tutors
	has_many :tutor_subjects, through: :member_subject_tutors
	has_many :subjects, through: :tutor_subjects
	has_many :tutors, through: :tutor_subjects
end
