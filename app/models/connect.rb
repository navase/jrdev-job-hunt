class Connect < ActiveRecord::Base
  belongs_to :junior
  belongs_to :company_profile

  validates_uniqueness_of :company_profile, scope: :junior, message:"You already connected with this comany"
end
