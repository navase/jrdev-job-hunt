class CompanyProfilesController < ApplicationController

  def index
    @company_profiles = CompanyProfile.all

    respond_to do |format|
      format.html
      format.json { render json: @company_profiles }
    end
  end

  def show
    render json:{
        company_profile: company_profile
    }
  end

  # def new
  #   # new profile has to be linked to current singed in company
  #   @company_profile = CompanyProfile.new
  # end

  def create
    company_profile = CompanyProfile.find(params[:id])
    if company_profile.create(profile_params)
      render json: { company_profile: company_profile }
    else
      render json: {
        message: "Could not create your profile",
        errors: comany_profile.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    company_profile = CompanyProfile.find(params[:id])
      if company_profile.update(profile_params)
        render json: { company_profile: company_profile }
      else
        render json: {
          message: "Could not update your profile",
          errors: company_profile.errors,
        }, status: :unprocessible_entity
      end
    end

    def destroy
      company_profile = CompanyProfile.find(params[:id])
      if company_profile.destroy
        render json: { company_profile: nil }
      else
        render json: {
          message: "Could not destroy your profile, please try again",
        }, status: :unprocessible_entity
      end
    end

  private

  def profile_params
    params.require(:company_profile).permit(:name, :description, :size, :salary_indication, :jr_sr_ratio, :company_id )
  end

end
