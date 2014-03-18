class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :tutor_subjects, :subject_od, :subject_id
  	rename_column :subjects, :researchareaid, :research_area_id
  	rename_column :members, :member_id, :user_id
  end
end
