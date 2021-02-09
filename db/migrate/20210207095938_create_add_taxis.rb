class CreateAddTaxis < ActiveRecord::Migration[6.1]
  def change
    create_table :add_taxis do |t|
      t.string :Vehicle
      t.string :TaxiHoldername
      t.string :Registrationnumber
      t.string :Phonenumber

      t.timestamps
    end
  end
end
