# This migration comes from forest (originally 20190702155117)
class AddLocaleToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :forest_settings, :locale, :string
    add_index :forest_settings, :locale
  end
end
