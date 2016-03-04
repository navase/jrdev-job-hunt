class CompanyProfilesController < ApplicationController
before_action :authenticate_company!, only: [:create, :update, :destroy]

  def index
    company_profiles = CompanyProfile.all
    render json:{
      meta: {
        company_profiles_count: company_profiles.count,
        page: 0
      },
      company_profiles: company_profiles
    }
  end

  # def show
  #   company_profile = CompanyProfile.find(params[:id])
  #   render json:{
  #     company_profile: company_profile
  #   }
  # end

  def new
    # new profile has to be linked to current singed in company
    @company_profile = CompanyProfile.new
  end

  def create
    @company_profile = CompanyProfile.new(profile_params)
    @company_profile.company_id = current_company.id
    if @company_profile.save
      redirect_to @company_profile
    else
      render :new
    end
  end


  private

  def profile_params
    params.require(:company_profile).permit(:name, :description, :size, :salary_indication, :jr_sr_ratio, :company_id )
  end
end
