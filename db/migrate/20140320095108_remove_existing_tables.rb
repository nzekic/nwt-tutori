class RemoveExistingTables < ActiveRecord::Migration
  def change
    drop_table :privileges
    drop_table :research_areas
    drop_table :subjects
    drop_table :users
    drop_table :tutors
    drop_table :members
    drop_table :tutor_subjects
    drop_table :member_subject_tutors
  end
end
