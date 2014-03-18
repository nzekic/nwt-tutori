class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :userID
      t.string :name
      t.string :familyName

      t.timestamps
    end
  end
end
