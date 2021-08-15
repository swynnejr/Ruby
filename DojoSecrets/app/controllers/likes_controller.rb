class LikesController < ApplicationController
  def create
    @likes = Like.create(like_params)
    # @likes = Like.create(params[:secret_id], session[:user_id])
    redirect_to :back
  end
  private
    def like_params
      params.require(:like).permit(:secret_id, :user_id)
    end

end
