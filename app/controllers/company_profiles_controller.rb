class CompanyProfilesController < ApplicationController

  def index
    @profiles = CompanyProfile.all
  end
end
