class RenameSubjectTutorsToTutorSubject < ActiveRecord::Migration
  def change
  	rename_table :subject_tutors, :tutor_subjects
  end
end
