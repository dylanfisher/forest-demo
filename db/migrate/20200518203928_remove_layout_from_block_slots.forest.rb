# This migration comes from forest (originally 20170818025500)
class RemoveLayoutFromBlockSlots < ActiveRecord::Migration[5.1]
  def change
    remove_column :forest_block_slots, :layout, :string
  end
end
