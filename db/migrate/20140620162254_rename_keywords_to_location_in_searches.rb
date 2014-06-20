class RenameKeywordsToLocationInSearches < ActiveRecord::Migration
  def change
  	rename_column :searches, :keywords, :location
  end
end
