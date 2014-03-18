class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.integer :userID
      t.string :name
      t.string :familyName

      t.timestamps
    end
  end
end
