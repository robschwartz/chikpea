 
 
class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @sessions = Session.all
  end 

  def show
  end 

  def new 
    @session = Session.new
  end 

  def edit
  end 

  def create
    @session = Session.new(session_params)
    @session.save
    respond_with(@session)
  end 

  def update
    @session.update(session_params)
    flash[:notice] = 'Session was successfully updated.'
    respond_with(@session)
  end 

  def destroy
    @session.destroy
    redirect_to sessions_url, notice: 'Session was successfully destroyed.'
  end 

  private
    def set_session
      @session = Session.find(params[:id])
    end 

    def session_params
      params.require(:session).permit(:location_id, :start_time, :end_time, :date, :ages, :activity, :title, :description, :available_spots) 
    end 
end
 
