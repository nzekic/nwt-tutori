class Subject < ActiveRecord::Base
	has_many :ads, foreign_key: "subject_id"
	belongs_to :research_area
	validates :name, presence: true, length: { maximum: 50 }
	validates :faculty, presence: true, length: {maximum: 100}
end
