class CreateTrademanprofiles < ActiveRecord::Migration
  def change
    create_table :trademanprofiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
