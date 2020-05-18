# This migration comes from forest (originally 20170109185414)
class CreateBaseBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :forest_base_blocks do |t|

      t.timestamps
    end
  end
end
