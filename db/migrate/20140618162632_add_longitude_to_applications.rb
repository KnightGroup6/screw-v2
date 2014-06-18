class AddLongitudeToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :longitude, :float
  end
end
