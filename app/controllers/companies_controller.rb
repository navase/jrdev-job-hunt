class CompaniesController < ApplicationController

  def show
    company = Company.find(params[:id])
    company_profiles = company.company_profiles

    render json:{
      meta: {
        company_profiles_count: company_profiles.count,
        page: 0
      },
      company: company.as_json({include: :company_profiles})
    }
  end

end
