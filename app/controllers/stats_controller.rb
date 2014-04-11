class StatsController < ApplicationController
  def registered_users
    render json: User.all.group_by{ |u| u.created_at.month }
  end
end
