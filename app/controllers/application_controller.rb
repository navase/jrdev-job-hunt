class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  helper_method :current_junior_profile

  def current_junior_profile
    current_junior_profile = JuniorProfile.first
  end

end
