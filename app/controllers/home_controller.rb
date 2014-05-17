class HomeController < ApplicationController
  respond_to :json, :html
  def index
  end
  def show_ads
    respond_to do |format|
      format.html
      format.json { head :no_content }
    end
  end
end