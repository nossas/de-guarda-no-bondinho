class RemovePictureFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :picture
  end

  def down
    add_column :users, :picture, :string
  end
end
