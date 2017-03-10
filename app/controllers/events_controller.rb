class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
    @biz_locations = Location.where(partner_id: @biz.id)
    if !@biz_locations.nil?
      @biz_locations = @biz_locations.map {|x| [x.street1, x.id]}
    end
  end

  def edit
    @biz_locations = Location.where(partner_id: @biz.id)
    if !@biz_locations.nil?
      @biz_locations = @biz_locations.map {|x| [x.street1, x.id]}
    end
  end

  def create
    @event = Event.new(event_params)
    @event.save
    respond_with(@event)
  end

  def update
    @event.update(event_params)
    flash[:notice] = 'Event was successfully updated.'
    respond_with(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:location_id, :start_time, :end_time, :date, :ages_group, :activity, :title, :description, :open_spots)
    end
end
