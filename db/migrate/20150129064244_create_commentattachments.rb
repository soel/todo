class CreateCommentattachments < ActiveRecord::Migration
  def change
    create_table :commentattachments do |t|
      t.integer :comment_id
      t.string :document

      t.timestamps
    end
  end
end
