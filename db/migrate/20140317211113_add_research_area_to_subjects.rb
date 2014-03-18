class AddResearchAreaToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :researchareaid, :integer
  end
end
