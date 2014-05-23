class ResearchArea < ActiveRecord::Base
	has_many :subjects, dependent: :destroy
end
