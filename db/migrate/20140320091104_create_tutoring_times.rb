class CreateTutoringTimes < ActiveRecord::Migration
  def change
    create_table :tutoring_times do |t|
      t.integer :ad_id
      t.datetime :time
      t.boolean :reserved

      t.timestamps
    end
  end
end
