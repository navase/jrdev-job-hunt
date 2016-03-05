class Message < ActiveRecord::Base
  belongs_to :junior_profile
  belongs_to :company_profile
end
