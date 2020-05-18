# This migration comes from forest (originally 20180415034427)
class AddRedirectToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :forest_pages, :redirect, :string
  end
end
