class Discussion < ActiveRecord::Base
  attr_accessible :comment, :topic, :users, :course_id

  belongs_to :course
  
  #A single discussion can belong to multiple users
  #hasbelongs_to_many :users

end
