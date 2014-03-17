class UserRole < ActiveRecord::Base
	validates :role, presence: true, length: { maximum: 100 }
end
