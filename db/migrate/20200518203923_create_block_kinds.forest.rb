# This migration comes from forest (originally 20170109175932)
class CreateBlockKinds < ActiveRecord::Migration[5.0]
  def change
    create_table :forest_block_kinds do |t|
      t.string :name
      t.text :description
      t.string :category
      t.boolean :active, default: true, null: false

      t.timestamps
    end
    add_index :forest_block_kinds, :name, unique: true
    add_index :forest_block_kinds, :category
  end
end
