class DashboardsController < ApplicationController
  def index
  end

  def new
    @myInfo = User.find(session[:user_id])
    @myTrades = Game.all.where(user_id: session[:user_id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end
end
