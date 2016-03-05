class JuniorProfilesController < ApplicationController
  before_action :set_junior_profile, only: [:show, :edit, :update, :destroy]

  def index
    @junior_profiles = JuniorProfile.all

    render json: {
        junior_profiles: @junior_profiles
      }
  end

  def show
    render json: {
      junior_profile: @junior_profile
    }
  end

  def create
    @junior_profile = JuniorProfile.new(junior_profile_params)
    @junior_profile.junior_id = current_junior.id

    if @junior_profile.save
      render json: {
        junior_profile: @junior_profile
      }
    end
  end

  def update
    if @junior_profile.junior_id == current_junior.id
      if @junior_profile.update(junior_profile_params)
        render json: {
          junior_profile: @junior_profile
        }
      end
    else
      redirect_to @junior_profile
    end
  end

  def destroy
    if @junior_profile.junior_id == current_junior.id
      @junior_profile.destroy
      render json: {
        junior_profile: nil
      }
    end
  end

  private
  def set_junior_profile
    @junior_profile = JuniorProfile.find(params[:id])
  end

  def junior_profile_params
    params.require(:junior_profile).permit(:name, :city, :picture, :ruby, :rails,
    :javascript, :node, :react, :jquery, :php, :java, :net, :cplusplus, :coffeescript, :csharp)
  end
end
