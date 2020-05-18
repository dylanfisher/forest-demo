# This migration comes from forest (originally 20170109180818)
class CreateBlockSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :forest_block_slots do |t|
      t.references :forest_block, polymorphic: true, index: { name: 'index_frst_block_slots_on_frst_block_type_and_frst_block_id' }
      t.references :forest_block_kind, index: true, foreign_key: true
      t.references :forest_block_record, polymorphic: true, index: { name: 'index_f_blck_slots_on_f_blck_record_type_and_f_blck_record_id' }

      t.string :layout

      t.integer :position, default: 0, null: false

      t.timestamps
    end

    add_index :forest_block_slots, :layout
  end
end
