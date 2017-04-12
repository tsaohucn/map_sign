class ChangeUsersPhotoToAvatar < ActiveRecord::Migration
  def up
    remove_column :users, :photo
    add_attachment :users, :avatar
  end

  def down
    add_column :users, :photo
    remove_attachment :users, :avatar
  end
end
