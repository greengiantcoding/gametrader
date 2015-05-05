class GamesController < ApplicationController
  def index
    @myInfo = User.find(session[:user_id])
  end

  def new
  end

  def create
    if params[:trade_status] == 'Yes' and params[:trade_requirements] == [""] then flash[:trade_error] = 'Must Select A Desired Trade Title/Category' end
    if params[:sell_status] == 'Yes' and params[:sell_price] == "" then flash[:sell_error] = 'Must Select A Sell Price' end
    if flash[:trade_error] or flash[:sell_error] then redirect_to '/games/new' 
    else
      @trade_price = params[:trade_requirements].join(',') 
      Game.create( title: params[:title], 
                      genre: params[:genre], 
                      description: params[:description], 
                      quality: params[:quality], 
                      trade_status: params[:trade_status],
                      trade_price: @trade_price,
                      sell_status: params[:sell_status],
                      sell_price: params[:sell_price],
                      user_id: session[:user_id],
                      platform: params[:console]
                      ) 
      redirect_to '/dashboards/new'
    end
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
