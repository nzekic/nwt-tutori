class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :tutoring_time_id
      t.integer :member_id

      t.timestamps
    end
  end
end
