class Advertisement < ApplicationRecord
  belongs_to :position
  belongs_to :sector
  belongs_to :city
  belongs_to :country
end
