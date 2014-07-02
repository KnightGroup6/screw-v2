class AddDistanceIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :distance_id, :integer
  end
end
