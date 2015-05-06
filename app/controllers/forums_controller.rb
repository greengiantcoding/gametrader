class ForumsController < ApplicationController
  def index
  	@allForums = Forum.all.order('game_category')
  	@forumCategories = Forum.all.group('game_category')
  	@forumGames = Forum.all.group('game_category').group('game_title')
  end

  def new
  end

  def create
  	# @newForum = Forum.create(forum_params)
  	@newForum = Forum.create(game_title: params[:game_title], game_category: params[:game_category], topic_title: params[:topic_title], topic_content: params[:topic_content], user_id: session[:user_id])

  	render '/forums/index'
  end

  def edit
  end

  private

  # def forum_params
  # 	params.permit(:game_category, :game_title, :topic_title, :topic_content, :user_id)
  # end

end
