class SessionsController < ApplicationController

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    privilege = Privilege.find_by(user_id: session[:user_id])
      if privilege.access == 'Dev' or privilege.access == 'admin' 
        then redirect_to '/administrations/index'
        else redirect_to '/dashboards'
      end
    else
      flash.now.alert = 'Invalid login credentials'
      render :new
    end
  end

  def show
     session[:user_id] = nil
    redirect_to '/sessions/new', notice: 'Signed out successfully'
  end

  def delete
    session[:user_id] = nil
    redirect_to '/sessions/new', notice: 'Signed out successfully'
  end
end
