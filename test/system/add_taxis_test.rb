require "application_system_test_case"

class AddTaxisTest < ApplicationSystemTestCase
  setup do
    @add_taxi = add_taxis(:one)
  end

  test "visiting the index" do
    visit add_taxis_url
    assert_selector "h1", text: "Add Taxis"
  end

  test "creating a Add taxi" do
    visit add_taxis_url
    click_on "New Add Taxi"

    fill_in "Phonenumber", with: @add_taxi.Phonenumber
    fill_in "Registrationnumber", with: @add_taxi.Registrationnumber
    fill_in "Taxiholdername", with: @add_taxi.TaxiHoldername
    fill_in "Vehicle", with: @add_taxi.Vehicle
    click_on "Create Add taxi"

    assert_text "Add taxi was successfully created"
    click_on "Back"
  end

  test "updating a Add taxi" do
    visit add_taxis_url
    click_on "Edit", match: :first

    fill_in "Phonenumber", with: @add_taxi.Phonenumber
    fill_in "Registrationnumber", with: @add_taxi.Registrationnumber
    fill_in "Taxiholdername", with: @add_taxi.TaxiHoldername
    fill_in "Vehicle", with: @add_taxi.Vehicle
    click_on "Update Add taxi"

    assert_text "Add taxi was successfully updated"
    click_on "Back"
  end

  test "destroying a Add taxi" do
    visit add_taxis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add taxi was successfully destroyed"
  end
end
