class AddSearchToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :search, :string
  end
end
