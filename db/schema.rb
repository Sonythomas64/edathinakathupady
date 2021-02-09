ActiveRecord::Schema.define(version: 2021_02_07_095938) do

  create_table "add_taxis", force: :cascade do |t|
    t.string "Vehicle"
    t.string "TaxiHoldername"
    t.string "Registrationnumber"
    t.string "Phonenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "addtaxis", force: :cascade do |t|
    t.string "Vehicle"
    t.string "Taxi_Holdername"
    t.string "Registration_number"
    t.string "Phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
