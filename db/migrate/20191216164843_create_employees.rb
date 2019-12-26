class CreateEmployees < ActiveRecord::Migration[6.0]
  def change

    create_table :employees do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :salary
      t.string :pay_scale


      t.timestamps
    end
  end
end
