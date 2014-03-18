class AddColumn < ActiveRecord::Migration
  def change
  	add_column :users, :privilege_id, :integer
  end
end
