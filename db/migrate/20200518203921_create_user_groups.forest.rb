# This migration comes from forest (originally 20161225212203)
class CreateUserGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :forest_user_groups do |t|
      t.string :name

      t.timestamps
    end
    add_index :forest_user_groups, :name, unique: true
  end
end
