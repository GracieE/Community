class ChangeCommentsTextToText < ActiveRecord::Migration
  def up
	change_table :comments do |t|
  		t.remove :text
  		t.text :body
	end

  end

  def down
  end
end
