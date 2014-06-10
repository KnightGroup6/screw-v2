class AddQuestionaToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :questiona, :text
  end
end
