# This migration comes from forest (originally 20180618190248)
class AddIndexCreatedAtToMediaItems < ActiveRecord::Migration[5.2]
  def change
    add_index :forest_media_items, :created_at
  end
end
