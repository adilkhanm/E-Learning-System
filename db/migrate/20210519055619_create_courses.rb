class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_description
      t.string :difficulty
      t.string :time_required

      t.timestamps
    end
  end
end
