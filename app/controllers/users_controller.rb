class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    if params[:password] != params[:confirm] or params[:confirm].length == 0 
      then flash[:badConfirm] = 'Password & Confirmation dont match' end
    @newUser = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    puts @newUser.errors.full_messages
    if @newUser.errors.full_messages.length > 0 
      then flash[:errors] = @newUser.errors.full_messages end
    if flash[:errors] or flash[:badConfirm] 
      then redirect_to '/users/new' 
    else @access = Privilege.all
     if @access.count == 0
        then Privilege.create(user_id: @newUser.id, access: 'Dev')
      else Privilege.create(user_id: @newUser.id, access: 'Public') end
      redirect_to '/sessions/new' end
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
