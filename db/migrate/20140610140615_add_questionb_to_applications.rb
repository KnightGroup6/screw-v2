class AddQuestionbToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :questionb, :text
  end
end
