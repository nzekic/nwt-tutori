class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :privilege_id
      t.string :username
      t.string :password
      t.string :email
      t.string :name
      t.string :family_name
      t.boolean :account_activated
      t.string :activation_code

      t.timestamps
    end
  end
end
