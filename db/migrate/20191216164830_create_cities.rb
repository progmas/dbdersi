class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.references :country, null: false, foreign_key: true
      t.string :name
    end
  end
end
