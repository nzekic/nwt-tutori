class User < ActiveRecord::Base

	has_one :profile, dependent: :destroy, foreign_key:"user_id"
	belongs_to :privilege
	has_many :appointments, dependent: :destroy, foreign_key: "member_id"
	#ako je tutor
	has_many :ads, dependent: :destroy, foreign_key: "tutor_id"
	has_many :tutoring_times, through: :ads
	has_many :subjects, through: :ads
	has_many :appointment_times, through: :appointments, class_name: "TutoringTime", dependent: :destroy
	before_save { self.email = email.downcase }

	validates :name, presence: true, length: { maximum: 50 }
	validates :family_name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true


	def self.check_user(username, password)
  	user = User.where(username: username).take
  	if user && user.password == Digest::MD5.hexdigest(password)
  		user
  	else
  		nil
  	end
    end
    def users_created_at()
    count(:group => "year(created_at),month(created_at)")
	end

end
