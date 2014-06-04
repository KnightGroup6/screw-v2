class AddBudgetIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :budget_id, :integer
  end
end
