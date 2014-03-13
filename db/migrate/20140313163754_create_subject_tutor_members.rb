class CreateSubjectTutorMembers < ActiveRecord::Migration
  def change
    create_table :subject_tutor_members do |t|
      t.integer :subjecttutorID
      t.integer :userID

      t.timestamps
    end
  end
end
