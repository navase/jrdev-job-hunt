class ConnectsController < ApplicationController
  before_action :set_junior_profile

  def index
    render json: {
      meta: {
        count: junior_profile.connects.count,
        page: 0
      },
      connects: junior_profile.connects.order(:company_profile)
    }
  end

  def create
    if connect = junior_profile.connects.create(connect_params)
      render json: { connect: connect }
    else
      render json: {
        message: "Could not create connect",
        errors: connect.errors,
      }, status: :unprocessible_entity
    end
  end

  private

  def set_junior_profile
    junior_profile = JuniorProfile.find(params[:junior_profile_id])
  end

  def connect_params
    params.require(:connect).permit(:junior_profile, :company_profile)
  end
end
