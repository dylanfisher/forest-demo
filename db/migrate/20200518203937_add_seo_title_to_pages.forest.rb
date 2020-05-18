# This migration comes from forest (originally 20190423173909)
class AddSeoTitleToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :forest_pages, :seo_title, :string
  end
end
