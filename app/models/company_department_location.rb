class CompanyDepartmentLocation < ApplicationRecord
  belongs_to :company
  belongs_to :department
  belongs_to :city
  belongs_to :country
  belongs_to :sector
end
