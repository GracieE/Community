class Discussion < ActiveRecord::Base
  attr_accessible :comment, :topic, :users, :course_id

  belongs_to :course
  
  #A single discussion can belong to multiple users
  #has_and_belongs_to_many :users
  has_many :comments
end
