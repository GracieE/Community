class CreateJoinTableUsersCourses	 < ActiveRecord::Migration

create_table :courses_users, :id => false do |t|
  t.references :course, :null => false
  t.references :user, :null => false
end

# Adding the index can massively speed up join tables. Don't use the
# unique if you allow duplicates.
add_index(:courses_users, [:course_id, :user_id], :unique => true)

end
