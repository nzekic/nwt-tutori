class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_login, :set_locale
  def check_login
  	if @user || session[:user_id]
  		@user = User.find(session[:user_id]) unless @user
  	end
  end
  def set_locale
  	logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
  	I18n.locale = params[:locale] || extract_locale_from_accept_language_header || I18n.default_locale
  	logger.debug "* Locale set to '#{I18n.locale}'"
  end
  private
  	def extract_locale_from_accept_language_header
    	request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  	end

end