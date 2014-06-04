class AddJobstartdateIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :jobstartdate_id, :integer
  end
end
