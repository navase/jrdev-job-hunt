class JuniorProfilesController < ApplicationController
  before_action :authenticate_junior!
  before_action :set_junior_profile, only: [:show, :edit, :update, :destroy]
  before_action :is_owner, only: [:edit, :update, :destroy]

  # GET /junior_profiles
  # GET /junior_profiles.json
  def index
    @junior_profiles = JuniorProfile.all

    respond_to do |format|
      format.html { }
      format.json {
        render json: @junior_profiles
      }
    end
  end

  # GET /junior_profiles/1
  # GET /junior_profiles/1.json
  def show
    respond_to do |format|
      format.html { }
      format.json {
        render json: @junior_profile
      }
    end
  end

  # GET /junior_profiles/new
  def new
    @junior_profile = JuniorProfile.new
  end

  # GET /junior_profiles/1/edit
  def edit
  end

  # POST /junior_profiles
  # POST /junior_profiles.json
  def create
    @junior_profile = JuniorProfile.new(junior_profile_params)
    @junior_profile.junior_id = current_junior.id

    respond_to do |format|
      if @junior_profile.save
        format.html { redirect_to @junior_profile, notice: 'Your profile was successfully created.' }
        format.json { render :show, status: :created, location: @junior_profile }
      else
        format.html { render :new }
        format.json { render json: @junior_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /junior_profiles/1
  # PATCH/PUT /junior_profiles/1.json
  def update
    if @junior_profile.junior_id == current_junior.id
      respond_to do |format|
        if @junior_profile.update(junior_profile_params)
          format.html { redirect_to @junior_profile, notice: 'Your profile was successfully updated.' }
          format.json { render :show, status: :ok, location: @junior_profile }
        else
          format.html { render :edit }
          format.json { render json: @junior_profile.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to @junior_profile
    end
  end

  # DELETE /junior_profiles/1
  # DELETE /junior_profiles/1.json
  def destroy
    @junior_profile.destroy
    respond_to do |format|
      format.html { redirect_to junior_profiles_url, notice: 'Your profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_junior_profile
    @junior_profile = JuniorProfile.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def junior_profile_params
    params.require(:junior_profile).permit(:name, :city, :picture, :ruby, :rails,
    :javascript, :node, :react, :jquery, :php, :java, :net, :cplusplus, :coffeescript, :csharp)
  end

  def is_owner
    @junior_profile.junior_id == current_junior.id
  end
end
