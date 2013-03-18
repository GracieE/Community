class Comment < ActiveRecord::Base
  attr_accessible :discussion_id, :text, :user_id

  belongs_to :discussion
  belongs_to :user
end
