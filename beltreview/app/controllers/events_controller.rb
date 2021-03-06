class EventsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @users = User.all
    @local_events = Event.all.where(state: @user.state)
    @other_events = Event.all.where.not(state: @user.state)
  end

  def new
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      redirect_to :back
    else
      flash[:notice] = @event.errors.full_messages
      redirect_to :back
    end
  end

  def edit
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees.all
  end

  def destroy
    event = Event.find(params[:id])
    if current_user.id == event.user_id
      event.destroy
      redirect_to :back
    else
      redirect_to "/events"
    end
  end


  private
    def event_params
      params.require(:event).permit(:title, :date, :city, :state, :user_id)
    end


end
