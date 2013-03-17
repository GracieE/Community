class Course < ActiveRecord::Base
  attr_accessible :instructor, :location, :name

  has_many :discussions
end
