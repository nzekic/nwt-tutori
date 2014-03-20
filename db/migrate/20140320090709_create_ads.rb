class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :tutor_id
      t.integer :subject_id
      t.string :title
      t.text :description
      t.float :hourly_rate
      t.boolean :valid

      t.timestamps
    end
  end
end
