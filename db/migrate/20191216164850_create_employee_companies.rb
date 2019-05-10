class CreateEmployeeCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_companies do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
