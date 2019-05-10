class CreateAdvertisements < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisements do |t|
      t.integer :work_type
      t.references :position, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
