class CreateGroupsGrmails < ActiveRecord::Migration
  def change
    create_table :groups_grmails, id: false do |t|
      t.references :group, index: true, null: false
      t.references :grmail, index: true, null: false
    end
  end
end
