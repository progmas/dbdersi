class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.references :user, null: false, foreign_key: true
      t.string :rank

      t.timestamps
    end
  end
end
