class CreateTrademanroles < ActiveRecord::Migration
  def change
    create_table :trademanroles do |t|
      t.string :name

      t.timestamps
    end
  end
end
