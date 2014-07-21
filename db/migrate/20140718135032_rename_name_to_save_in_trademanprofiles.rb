class RenameNameToSaveInTrademanprofiles < ActiveRecord::Migration
  def change
  	rename_column :trademanprofiles, :name, :save
  end
end
