class AttendeesController < ApplicationController

    def create
    # @likes = Like.create(like_params)
        @event = Event.find(params[:event_id])
        @attendee = Attendee.create(event: @event, user: current_user)
        redirect_to :back
    end

    def destroy
        # redirect_to "/users/#{current_user.id}" unless current_user.id == params[:id].to_i
        event = Event.find(params[:event_id])
        attendee = Attendee.find_by(event: event, user: current_user)
        attendee.destroy
        redirect_to :back
    end
    

end
