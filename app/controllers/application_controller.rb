class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def after_sign_up_path_for(junior)
    # new_junior_profile_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_in_path_for(junior)
    root_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_up_path_for(company)
    # new_company_profile_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_in_path_for(company)
    root_path
    # hier komt url naar app op bitballoon of localhost
  end

end
