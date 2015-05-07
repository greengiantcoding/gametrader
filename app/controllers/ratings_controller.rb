class RatingsController < ApplicationController

	def create
		@currentRating = Rating.find_by(user_id: session[:user_id], comment_id: params[:comment_id] )
		if @currentRating == nil then Rating.create(user_id: session[:user_id], comment_id: params[:comment_id], vote:params[:vote])
		else 
			if params[:vote] == @currentRating.vote then 
				Rating.find_by(@currentRating.id).delete
			else Rating.find_by(@currentRating.id).update(vote: params[:vote])
			end
		end
		redirect_to '/forums'
	end

	def update
	end

	private

	def rating_params
		params.permit(:comment_id, :vote)
	end

end
