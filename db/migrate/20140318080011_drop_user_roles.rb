class DropUserRoles < ActiveRecord::Migration
  def up
    drop_table :user_roles
  end
  def down
    create_table :user_roles do |t|
      t.string :role_name

      t.timestamps        
    end
  end
end
