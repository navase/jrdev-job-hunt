class Connect < ActiveRecord::Base
  belongs_to :junior_profile
  belongs_to :company_profile

  validates_uniqueness_of :company_profile, scope: :junior_profile, message:"You already connected with this company"
end
