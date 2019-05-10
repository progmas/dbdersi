class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :country
end
