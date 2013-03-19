class Comment < ActiveRecord::Base
  attr_accessible :discussion_id, :body, :user_id, :name

  belongs_to :discussion
  belongs_to :user
end
