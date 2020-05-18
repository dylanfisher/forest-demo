# This migration comes from forest (originally 20190223155013)
class AddTypeToBlockKinds < ActiveRecord::Migration[5.2]
  def change
    add_column :forest_block_kinds, :record_type, :string
    add_index :forest_block_kinds, :record_type
  end
end
