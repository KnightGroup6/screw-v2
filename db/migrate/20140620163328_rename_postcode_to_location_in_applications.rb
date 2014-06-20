class RenamePostcodeToLocationInApplications < ActiveRecord::Migration
  def change
  	rename_column :applications, :postcode, :location
  end
end
