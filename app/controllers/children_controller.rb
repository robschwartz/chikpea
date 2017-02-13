 
 
class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @children = Child.all
  end 

  def show
  end 

  def new 
    @child = Child.new
  end 

  def edit
  end 

  def create
    @child = Child.new(child_params)
    @child.save
    respond_with(@child)
  end 

  def update
    @child.update(child_params)
    flash[:notice] = 'Child was successfully updated.'
    respond_with(@child)
  end 

  def destroy
    @child.destroy
    redirect_to children_url, notice: 'Child was successfully destroyed.'
  end 

  private
    def set_child
      @child = Child.find(params[:id])
    end 

    def child_params
      params.require(:child).permit(:first_name, :last_name, :gender, :birthdate, :user_id) 
    end 
end
 
