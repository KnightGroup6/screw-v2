class AddQuestionToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :question, :text
  end
end
