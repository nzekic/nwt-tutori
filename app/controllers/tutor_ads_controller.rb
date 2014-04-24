class TutorAdsController < ApplicationController
  before_action :set_user	
  #Ako je tutor
  def new
  end
  def show_my_ads
    if @user.privilege.name != "Tutor"
      render :json => 'Tutorska funkcionalnost'
    end
  end

  def create
    respond_to do |format|
      if @user.privilege.name == "Tutor"
        @ad = Ads.new(@user.id, params[:subject_id], params[:title], params[:description], params[:hourly_rate], true)
        if @user.ads.create(@ad)
          format.json { render json: "Uspjesno kreiran oglas" }
        else
          format.html { render action: 'new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
        render :json => 'Samo tutor smije kreirati oglas!'
      end
    end
  end

  def set_user
    @user = User.find_by(user_id: params['user_id'])
  end

end
