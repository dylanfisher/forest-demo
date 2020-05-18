# This migration comes from forest (originally 20161217200300)
class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :forest_pages do |t|
      t.string :title
      t.string :slug
      t.text :path
      t.integer :status, default: 1, null: false
      t.datetime :scheduled_date
      t.text :description

      t.timestamps
    end

    add_reference :forest_pages, :featured_image
    add_reference :forest_pages, :parent_page
    add_index :forest_pages, :slug
    add_index :forest_pages, :status
    add_index :forest_pages, :path, unique: true
  end

end
