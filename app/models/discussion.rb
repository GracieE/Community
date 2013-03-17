class Discussion < ActiveRecord::Base
  attr_accessible :comment, :topic, :user

  belongs_to :course
  belongs_to :user

end
