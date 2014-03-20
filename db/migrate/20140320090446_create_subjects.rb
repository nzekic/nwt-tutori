class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :research_area_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
