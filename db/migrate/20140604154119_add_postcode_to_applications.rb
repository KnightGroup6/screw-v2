class AddPostcodeToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :postcode, :text
  end
end
