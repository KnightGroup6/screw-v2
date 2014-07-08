class DropTrademanprofilepagesTable < ActiveRecord::Migration
  def up
    drop_table :trademanprofilepages
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
