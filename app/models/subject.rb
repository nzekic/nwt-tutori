class Subject < ActiveRecord::Base
	has_many :ads, foreign_key: "subject_id"
	has_many :users, through: :ads, foreign_key: "tutor_id"
	belongs_to :research_area
	validates :name, presence: true, length: { maximum: 50 }
end
