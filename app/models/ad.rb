class Ad < ActiveRecord::Base
	belongs_to :subject
	belongs_to :research_area
	belongs_to :user, foreign_key: "tutor_id"
	validates :tutor_id, presence: true
	validates :subject_id, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :hourly_rate, presence: true
end
