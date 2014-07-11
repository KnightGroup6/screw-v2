class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :image
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
