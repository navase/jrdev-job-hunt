class CompanyProfile < ActiveRecord::Base
  belongs_to :company
  validates_presence_of :name, :description, :size, :salary_indication, :jr_sr_ratio, presence: true
  validates_inclusion_of :size, in: %w(0-10 10-50 50-100 >100), allow_blank: false
  validates_inclusion_of :salary_indication, in: %w(<2000 2000-2200 2200-2400 2400-2600 2600-2800 2800-3000), allow_blank: false
end
