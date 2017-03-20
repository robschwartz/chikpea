class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      flash[:notice] = 'User was successfully updated.'
      if @biz
        redirect_to dashboard_path
      else
        redirect_to schedule_path
      end
    else
      render "edit"
    end
  end

  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(
      :first_name,
      :last_name,
      :stripe_id,
      :postcode,
      :phone,
      :primary_city,
      :street1,
      :street2,
      :city,
      :province,
      :drop_in_credits,
      :partner_id
    )
  end
end
