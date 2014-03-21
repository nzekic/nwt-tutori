class AccountsController < ApplicationController
  #Da se izbjegne invalid authenticity token
  protect_from_forgery :only => [:login, :register]
  before_action :set_user, :only => [:login, :register, :activate_account, :show_my_ads, :show_my_profile, :update_my_profile]

  def login
    respond_to do |format|
      if !@user
        format.json{render :json => 'Pogresan username'}
      else
        if params[:password] == @user.password
          format.json{render :json => 'Uspjesna prijava'}
        else
          format.json{render :json => 'Pogresan password'} 
        end
      end
    end
  end

  def logout
    respond_to do |format|
      format.json{render :json => 'Uspjesna odjava'}
    end
  end

  def register
    respond_to do |format|
      if !@user
        @user = User.new(:username => params['username'], :password => params['password'], :name => params['name'], :family_name => params['family_name'], :email => params['email'], :privilege_id => params['privilege_id'], :account_activated => false, :activation_code => "generisani rendom kod")
        if @user.save
          format.json{ render json: "Uspjesna registracija!" }
        else
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
          format.json { render json: "Vec postoji korisnik s korisnickim imenom" }
      end
    end
  end

  def activate_account
      if !@user
        render :json => 'Ne postoji account'
      else
        if(@user.account_activated)
          render :json => 'Vec ste aktivirali account'
        elsif(@user.activation_code==params['activation_code'])
          @user.update(:account_activated => true)
          render :json => 'Uspjesno ste aktivirali account'
        else
          render :json => 'Pogresan aktivacijski kod'
        end
      end
  end

  def show_my_profile
  end

  def update_my_profile
    respond_to do |format|
      if @user.update(profile_params)
        format.html { render action: 'show_my_profile' }
        format.json { render json: 'Uspjesna izmjena profila' }
      else
        format.html { render action: 'show_my_profile' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  #Ako je tutor
  def show_my_ads
    if @user.privilege.name != "Tutor"
      render :json => 'Tutorska funkcionalnost'
  end

  def create_ad
    respond_to do |format|
      if @user.privilege.name == "Tutor"
        @ad = Ads.new(@user.id, params[:subject_id], params[:title], params[:description], params[:hourly_rate], true)
        if @user.ads.create(@ad)
          format.json { render json: "Uspjesno kreiran oglas" }
        else
          format.html { render action: 'ads/new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
        render :json => 'Samo tutor smije kreirati oglas!'
      end
    end
  end

  def set_user
    @user = User.find_by(username: params['username'])
  end
  #U slučaju da korisnik želi promijeniti password
  def change_password
    if params[:password]!=params[:confirmed_password]
      render :json => 'Potvrdjeni password se ne slaze s unesenim'
    else
      if @user.update(:password => params[:password])
        render :json => 'Uspjesna izmjena passworda'
    end
  end
  #U slučaju da je zaboravljen password
  def reset_password
  end

  def profile_params
    params.permit(:privilege_id, :username, :password, :email, :name, :family_name, :account_activated, :activation_code)
  end
end
