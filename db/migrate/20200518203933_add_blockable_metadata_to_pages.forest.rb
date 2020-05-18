# This migration comes from forest (originally 20180625172226)
class AddBlockableMetadataToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :forest_pages, :blockable_metadata, :jsonb, default: {}
    add_index  :forest_pages, :blockable_metadata, using: :gin
  end
end
