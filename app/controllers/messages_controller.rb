class MessagesController < ApplicationController
  before_action :set_junior_profile
  # before_action :set_company_profile

  def index
    render json: {
      meta: {
        count: junior_profile.messages.count,
        page: 0
      },
      messages: junior_profile.messages.order(:company_profile)
    }
  end

  def create
    if message = junior_profile.messages.create(message_params)
      render json: { message: message }
    else
      render json: {
        message: "Could not create message",
        errors: message.errors,
      }, status: :unprocessible_entity
    end
  end

  private

  def set_junior_profile
    junior_profile = JuniorProfile.find(params[:junior_profile_id])
  end

  # def set_company_profile
  #   junior_profile = JuniorProfile.find(params[:junior_profile_id])
  # end

  def message_params
    params.require(:message).permit(:junior_profile, :company_profile)
  end
end
