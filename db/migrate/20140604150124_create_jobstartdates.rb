class CreateJobstartdates < ActiveRecord::Migration
  def change
    create_table :jobstartdates do |t|
      t.string :name

      t.timestamps
    end
  end
end
