class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :location
      t.string :instructor

      t.timestamps
    end
  end
end
