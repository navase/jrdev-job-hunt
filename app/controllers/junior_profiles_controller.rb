class JuniorProfilesController < ApplicationController

  def index
    junior_profiles = JuniorProfile.all

    render json: {
        junior_profiles: junior_profiles
      }
  end

  def current
    render json: {
      junior_profile: current_junior_profile
    }
  end

  def show
    junior_profile = JuniorProfile.find(params[:id])
    render json: {
      junior_profile: junior_profile
    }
  end

  def create
    junior_profile = JuniorProfile.find(params[:id])
    if junior_profile.create(junior_profile_params)
      render json: {
        junior_profile: junior_profile
      }
    else
      render json: {
        message: "Could not create your profile",
        errors: junior_profile.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    junior_profile = JuniorProfile.find(params[:id])
      if junior_profile.update(junior_profile_params)
        render json: {
          junior_profile: junior_profile
        }
      else
        render json: {
          message: "Could not update your profile",
          errors: junior_profile.errors,
        }, status: :unprocessible_entity
      end
  end

  def destroy
    junior_profile = JuniorProfile.find(params[:id])
    if junior_profile.destroy
      render json: { junior_profile: nil }
    else
      render json: {
        message: "Could not destroy your profile, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def junior_profile_params
    params.require(:junior_profile).permit(:name, :city, :picture, :ruby, :rails,
    :javascript, :node, :react, :jquery, :php, :java, :net, :cplusplus, :coffeescript, :csharp)
  end
end
