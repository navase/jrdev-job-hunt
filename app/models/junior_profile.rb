class JuniorProfile < ActiveRecord::Base
  has_many :connects
  has_many :messages
end
