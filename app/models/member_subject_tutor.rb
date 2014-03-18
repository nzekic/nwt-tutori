class MemberSubjectTutor < ActiveRecord::Base
	belongs_to :tutor_subject
	belongs_to :member
end
