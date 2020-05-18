# This migration comes from forest (originally 20190702172635)
class RemoveUniqueSlugIndexOnSettings < ActiveRecord::Migration[5.0]
  def up
    remove_index :forest_settings, :slug if index_exists?(:forest_settings, :slug)

    add_index :forest_settings, [:locale, :slug], unique: true
  end

  def down
    remove_index :forest_settings, [:locale, :slug] if index_exists?(:forest_settings, [:locale, :slug])

    add_index :forest_settings, :slug, unique: true
  end
end
