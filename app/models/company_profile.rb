class CompanyProfile < ActiveRecord::Base
  belongs_to :company
  validates :name, :description, :size, :salary_indication, :jr_sr_ratio, presence: true

end
