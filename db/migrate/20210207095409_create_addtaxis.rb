class CreateAddtaxis < ActiveRecord::Migration[6.1]
  def change
    create_table :addtaxis do |t|
      t.string :Vehicle
      t.string :Taxi_Holdername
      t.string :Registration_number
      t.string :Phone_number

      t.timestamps
    end
  end
end
