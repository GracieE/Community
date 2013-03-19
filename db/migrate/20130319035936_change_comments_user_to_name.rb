class ChangeCommentsUserToName < ActiveRecord::Migration
  def up
  	change_table :comments do |t|
  		t.string :name
  	end
  end

  def down
  end
end
