class JuniorsController < ApplicationController

  def index
    juniors = Juniors.all

    render json:{
      meta: {
        juniors_count: juniors.count,
        page: 0
      },
      juniors: juniors.as_json({include: :junior_profiles})
    }
  end

  def show
    junior = Junior.find(params[:id])

    render json:{
      junior: junior.as_json({include: :junior_profile})
    }
  end

end
