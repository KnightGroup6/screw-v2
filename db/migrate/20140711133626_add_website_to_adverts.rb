class AddWebsiteToAdverts < ActiveRecord::Migration
  def change
    add_column :adverts, :website, :text
  end
end
