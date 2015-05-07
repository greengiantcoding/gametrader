class ForumsController < ApplicationController
  def index
  	@allForums = Forum.all.order('game_category')
  	@forumCategories = Forum.all.group('game_category')
  	@forumGames = Forum.all.group('game_category').group('game_title')
  	@forumComments = Comment.all.order('forum_id')
    
    @commentRatings = []
    @forumComments.each do |comment|
      @rating = Comment.find(comment.id).ratings.sum(:vote)
      @commentRatings[comment.id] = @rating 
     
    end
  end

  def new
  end

  def create
  	# @newForum = Forum.create(forum_params)
  	@newForum = Forum.create(game_title: params[:game_title], game_category: params[:game_category], topic_title: params[:topic_title], topic_content: params[:topic_content], user_id: session[:user_id])

  	redirect_to '/forums'
  end

  def edit
  end

  private

  # def forum_params
  # 	params.permit(:game_category, :game_title, :topic_title, :topic_content, :user_id)
  # end

end

