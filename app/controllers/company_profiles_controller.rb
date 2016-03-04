class CompanyProfilesController < ApplicationController
before_action :authenticate_company!, only: [:create, :update, :destroy]

  def index
    @profiles = CompanyProfile.all
  end

  def show
    @profile = CompanyProfile.find(params[:id])
  end

  def new
    @profile = CompanyProfile.new
  end

  def create
    if @profile = CompanyProfile.create(profile_params)
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
