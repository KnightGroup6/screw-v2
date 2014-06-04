class AddDescriptionToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :description, :text
  end
end
