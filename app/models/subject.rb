class Subject < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :faculty, presence: true, length {maximum: 100}
end
