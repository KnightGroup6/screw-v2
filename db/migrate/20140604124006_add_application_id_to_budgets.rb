class AddApplicationIdToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :application_id, :integer
  end
end
