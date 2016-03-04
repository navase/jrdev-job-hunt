class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_up_path_for(junior)
    new_junior_profile_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_in_path_for(junior)
    root_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_up_path_for(company)
    new_company_profile_path
    # hier komt url naar app op bitballoon of localhost
  end

  def after_sign_in_path_for(company)
    company_path
    # hier komt url naar app op bitballoon of localhost
  end

end
