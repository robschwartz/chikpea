 
 
class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @partners = Partner.all
  end 

  def show
  end 

  def new 
    @partner = Partner.new
  end 

  def edit
  end 

  def create
    @partner = Partner.new(partner_params)
    @partner.save
    respond_with(@partner)
  end 

  def update
    @partner.update(partner_params)
    flash[:notice] = 'Partner was successfully updated.'
    respond_with(@partner)
  end 

  def destroy
    @partner.destroy
    redirect_to partners_url, notice: 'Partner was successfully destroyed.'
  end 

  private
    def set_partner
      @partner = Partner.find(params[:id])
    end 

    def partner_params
      params[:partner] 
    end 
end
 
