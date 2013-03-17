class RemoveUserFromDiscussions < ActiveRecord::Migration
  def up
  	remove_column :discussions, :user
  end

  def down
  	add_column :discussions, :user, :string
  end
end
