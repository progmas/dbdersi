class Friend < ApplicationRecord
  belongs_to :user
  belongs_to :other_user
end
