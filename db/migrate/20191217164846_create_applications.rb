class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.references :advertisement, null: false, foreign_key: true
      t.boolean :archive

      t.timestamps
    end
  end
end
