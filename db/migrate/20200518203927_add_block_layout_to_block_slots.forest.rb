# This migration comes from forest (originally 20170818025229)
class AddBlockLayoutToBlockSlots < ActiveRecord::Migration[5.1]
  def change
    add_reference :forest_block_slots, :forest_block_layout, foreign_key: true, index: true
  end
end
