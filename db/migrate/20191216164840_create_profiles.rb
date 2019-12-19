class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :birthdate
      t.string :gender
      t.references :city, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :skills

      t.timestamps
    end
  end
end
