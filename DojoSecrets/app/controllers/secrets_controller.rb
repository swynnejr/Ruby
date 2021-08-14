class SecretsController < ApplicationController
  def index
  end

  def create
    @secret = Secret.create(secret_params)
    if @secret.valid?
      # redirect_to dojo_secret_path(dojo_id: @secret.dojo_id, id: @secret.id)
      redirect_to :back
    else
      flash[:notice] = @secret.errors.full_messages
      redirect_to :back
    end
  end
  private
    def secret_params
      params.require(:secret).permit(:content, :user_id)
    end

end
