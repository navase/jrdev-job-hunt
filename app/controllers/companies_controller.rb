class CompaniesController < ApplicationController

  def show
    @company = Company.find(params[:id])
    @company_profiles = @company.company_profiles
  end

end
