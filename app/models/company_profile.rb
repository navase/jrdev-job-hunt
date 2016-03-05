class CompanyProfile < ActiveRecord::Base
  belongs_to :company
  validates              :size,
                         :salary_indication,
                         presence: true
  validates_presence_of  :name,
                         message: "Name cannot be empty."
  validates_presence_of  :description,
                         message: "Description cannot be empty."
  validates_presence_of  :jr_sr_ratio,
                         message: "Jr/Sr ratio cannot be empty."
  validates_inclusion_of :size, in: ["0 - 10", "10 - 50", "50 - 100", "> 100"],
                         allow_blank: false,
                         message: "Invalid input for Size."
  validates_inclusion_of :salary_indication,
                         in: ["< 2000", "2000 - 2200", "2200 - 2400", "2400 - 2600", "2600 - 2800", "2800 - 3000"],
                         allow_blank: false,
                         message: "Invalid input for salary indication."



end
