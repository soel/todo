class CreateGrmails < ActiveRecord::Migration
  def change
    create_table :grmails do |t|
      t.string :email

      t.timestamps
    end
  end
end
