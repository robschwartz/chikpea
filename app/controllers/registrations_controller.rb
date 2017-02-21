class RegistrationsController < Devise::RegistrationsController
  layout 'signup'

  def update_resource(resource, params)
    if resource.encrypted_password.blank? # || params[:password].blank?
      resource.email = params[:email] if params[:email]
      if !params[:password].blank? && params[:password] == params[:password_confirmation]
        logger.info "Updating password"
        resource.password = params[:password]
        resource.save
      end
      if resource.valid?
        resource.update_without_password(params)
      end
    else
      resource.update_with_password(params)
    end
  end

  def partner
    @user ||= User.new
    @user.build_partner
  end

  private

  # Route user to next registration path
  def after_sign_up_path_for(resource)
    schedule_path
  end

  def sign_up_params
    params.require(:user).permit(:email,:password, partner_attributes: [:name])
  end
end
