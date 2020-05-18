# This migration comes from forest (originally 20180712162414)
class AddMediaItemStatusToMediaItems < ActiveRecord::Migration[5.1]
  def change
    add_column :forest_media_items, :media_item_status, :integer, default: 0
    add_index :forest_media_items, :media_item_status
  end
end
