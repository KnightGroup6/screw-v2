class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.text :firstname
      t.text :lastname
      t.text :phone
      t.text :email
      t.integer :job_id
      t.integer :trade_id

      t.timestamps
    end
  end
end
