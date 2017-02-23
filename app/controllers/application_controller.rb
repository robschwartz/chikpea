class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_user, :authenticate

  def authenticate
    unless ENV['HTTP_AUTH_USERNAME'].blank? or ENV['HTTP_AUTH_PASSWORD'].blank?
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['HTTP_AUTH_USERNAME'] && password == ENV['HTTP_AUTH_PASSWORD']
      end
    end
  end

  private

  def set_user
    @user = User.find(current_user.id) if current_user

    set_business_user
  end

  def set_business_user
    if @user && !Partner.find_by_user_id(@user.id).nil?
      @biz_user = @user
      @biz = Partner.find_by_user_id(@user.id)
    end
  end

end
