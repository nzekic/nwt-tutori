class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :familyName
      t.string :email
      t.integer :userroleID

      t.timestamps
    end
  end
end
