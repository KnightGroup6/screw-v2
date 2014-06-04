class RemoveApplicationIdFromBudgets < ActiveRecord::Migration
  def change
    remove_column :budgets, :application_id, :integer
  end
end
