class CommentsController < ApplicationController
  def create
  	@comment = Comment.create( message_params )
  	redirect_to '/forums'
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 

  def message_params
  	params.require(:comment).permit(:content, :user_id, :forum_id)
  end

end
