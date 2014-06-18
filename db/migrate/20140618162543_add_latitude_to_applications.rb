class AddLatitudeToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :latitude, :float
  end
end
