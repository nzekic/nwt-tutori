class Ad < ActiveRecord::Base
	#has_many :tutoring_times, dependent: :destroy, foreign_key: "member_id"
	belongs_to :user
	belongs_to :subject

	validates :tutor_id, presence: true
	validates :subject_id, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :hourly_rate, presence: true
end
