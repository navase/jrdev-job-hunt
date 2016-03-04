class CompanyProfilesController < ApplicationController
before_action :authenticate_company!, only: [:create, :update, :destroy]

  def index
    @profiles = CompanyProfile.all
  end

  def show
    @profile = CompanyProfile.find(params[:id])
  end


  private

  def company_params
    params.require(:company).permit(:name, :description, :size, :salary_indication, :jr_sr_ratio, :company_id )
  end
end
