class LikesController < ApplicationController
  def create
    # @likes = Like.create(like_params)
    @secret = Secret.find(params[:secret_id])
    @likes = Like.create(secret: @secret, user: current_user)
    redirect_to :back
  end
  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to :back
  end
  # private
  #   def like_params
  #     params.require(:like).permit(:secret_id, :user_id)
  #   end

end
