# This migration comes from forest (originally 20170821161755)
class AddUniqueIndexToBlockLayouts < ActiveRecord::Migration[5.1]
  def change
    remove_index :forest_block_layouts, :slug
    add_index :forest_block_layouts, :slug, unique: true
  end
end
