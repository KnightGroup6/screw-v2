class AddLatitudeToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :latitude, :float
  end
end
