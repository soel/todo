class AddUsernameAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :string
  end
end
