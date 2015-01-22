class CreateGrmailsGroups < ActiveRecord::Migration
  def change
    create_table :grmails_groups, id: false do |t|
      t.references :group, index: true, null: false
      t.references :grmail, index: true, null: false
    end
  end
end
