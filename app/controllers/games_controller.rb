class GamesController < ApplicationController
  def index
    @myInfo = User.find(session[:user_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def upadate
  end

  def show
  end

  def delete
  end
end
