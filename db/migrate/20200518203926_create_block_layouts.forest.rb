# This migration comes from forest (originally 20170818025124)
class CreateBlockLayouts < ActiveRecord::Migration[5.1]
  def change
    create_table :forest_block_layouts do |t|
      t.string :slug
      t.string :display_name
      t.text :description

      t.timestamps
    end

    add_index :forest_block_layouts, :slug
  end
end
