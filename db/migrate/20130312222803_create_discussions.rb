class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :topic
      t.text :comment
      t.string :user
      t.timestamps
    end
  end
end
