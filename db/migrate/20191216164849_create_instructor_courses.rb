class CreateInstructorCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :instructor_courses do |t|
      t.references :instructor, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
