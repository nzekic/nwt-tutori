class CreateSubjectTutors < ActiveRecord::Migration
  def change
    create_table :subject_tutors do |t|
      t.integer :subjectID
      t.integer :userID
      t.float :rateperhour

      t.timestamps
    end
  end
end
