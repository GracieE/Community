class Course < ActiveRecord::Base
  attr_accessible :instructor, :location, :name

  has_many :discussions
  has_and_belongs_to_many :users
end
