class DashboardsController < ApplicationController
  def index
    @myInfo = User.find(session[:user_id])
    @myTrades = Game.all.where(user_id: session[:user_id])
  end

end
