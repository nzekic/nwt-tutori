class CreateResearchAreas < ActiveRecord::Migration
  def change
    create_table :research_areas do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
