class RenameSubjectTutorMembersToMemberSubjectTutors < ActiveRecord::Migration
  def change
  	rename_table :subject_tutor_members, :member_subject_tutors
  end
end
