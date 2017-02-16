

class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.save
    respond_with(@location)
  end

  def update
    @location.update(location_params)
    flash[:notice] = 'Location was successfully updated.'
    respond_with(@location)
  end

  def destroy
    @location.destroy
    redirect_to locations_url, notice: 'Location was successfully destroyed.'
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:partner_id,:primary_location,:street1,:street2,:country,:province,:city,:neighborhood,:postcode,:phone,:total_bookings)
    end
end
