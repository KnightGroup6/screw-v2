class CreateEmployeenumbers < ActiveRecord::Migration
  def change
    create_table :employeenumbers do |t|
      t.string :name

      t.timestamps
    end
  end
end
