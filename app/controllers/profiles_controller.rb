class ProfilesController < AuthController
  before_action :set_user_profile
	def index

	end
	def user_profile
		
	end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = User.find(params[:id])
    end
end