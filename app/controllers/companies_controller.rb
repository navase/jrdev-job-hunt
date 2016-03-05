class CompaniesController < ApplicationController

  def index
    companies = Company.all

    render json:{
      meta: {
        companies_count: companies.count,
        page: 0
      },
      companies: companies.as_json({include: :company_profiles})
    }
  end

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
