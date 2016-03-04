class CompanyProfilesController < ApplicationController
before_action :authenticate_company!, only: [:create, :update, :destroy]

  def index
    @profiles = CompanyProfile.all
  end

  def show
    @profile = CompanyProfile.find(params[:id])
  end

  def new
    # new profile has to be linked to current singed in company
    @profile = CompanyProfile.new
  end

  def create
    @profile = CompanyProfile.new(profile_params)
    @profile.company_id = current_company.id
    if @profile.save
      redirect_to @profile
    else
      render :new
    end
  end


  private

  def profile_params
    params.require(:company_profile).permit(:name, :description, :size, :salary_indication, :jr_sr_ratio, :company_id )
  end
end
