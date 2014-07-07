class CreateTrademanprofilepages < ActiveRecord::Migration
  def change
    create_table :trademanprofilepages do |t|
      t.string :name
      t.text :content
      t.string :ancestry

      t.timestamps
    end
    add_index :trademanprofilepages, :ancestry
  end
end
