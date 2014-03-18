class Subject < ActiveRecord::Base
	belongs_to :user
	belongs_to :research_area
	validates :name, presence: true, length: { maximum: 50 }
	validates :faculty, presence: true, length {maximum: 100}
end
