class ResearchArea < ActiveRecord::Base
	has_many :subjects, dependent: :destroy, foreign_key: "research_area_id"
end
