class ConnectsController < ApplicationController
  def create
    @company_profile = Company_profile.find(params[:company_profile_id])
    @connect = Connect.new
    @connect.user = current_user
    @connect.company_profile = @company_profile

    if @connect.save
      respond_to do |format|
        format.html { redirect_to @company_profile, notice: "Thanks for your connect!" }
        format.json { render json: { connects: @company_profile.connects.count } }
      end
    else
      respond_to do |format|
        format.html { redirect_to @company_profile, alert: "Awwwhh snap! No connects for the connects of you." }
        format.json { render json: { errors: @connect.errors }, status: :unprocessable_entity }
      end
    end
  end
end
end
