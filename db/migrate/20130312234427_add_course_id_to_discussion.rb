class AddCourseIdToDiscussion < ActiveRecord::Migration
  def change
    add_column :discussions, :course_id, :integer
  end
end
