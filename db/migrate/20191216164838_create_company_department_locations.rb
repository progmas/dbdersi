class CreateCompanyDepartmentLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :company_department_locations do |t|
      t.references :company, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
