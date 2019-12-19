class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.date :start
      t.date :end
      t.string :rank

      t.timestamps
    end
  end
end
