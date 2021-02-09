require "application_system_test_case"

class AddtaxisTest < ApplicationSystemTestCase
  setup do
    @addtaxi = addtaxis(:one)
  end

  test "visiting the index" do
    visit addtaxis_url
    assert_selector "h1", text: "Addtaxis"
  end

  test "creating a Addtaxi" do
    visit addtaxis_url
    click_on "New Addtaxi"

    fill_in "Holdername", with: @addtaxi.Holdername
    fill_in "Phone", with: @addtaxi.Phone
    fill_in "Registration", with: @addtaxi.Registration
    fill_in "Taxi", with: @addtaxi.Taxi
    fill_in "Vehicle", with: @addtaxi.Vehicle
    fill_in "Number", with: @addtaxi.number
    click_on "Create Addtaxi"

    assert_text "Addtaxi was successfully created"
    click_on "Back"
  end

  test "updating a Addtaxi" do
    visit addtaxis_url
    click_on "Edit", match: :first

    fill_in "Holdername", with: @addtaxi.Holdername
    fill_in "Phone", with: @addtaxi.Phone
    fill_in "Registration", with: @addtaxi.Registration
    fill_in "Taxi", with: @addtaxi.Taxi
    fill_in "Vehicle", with: @addtaxi.Vehicle
    fill_in "Number", with: @addtaxi.number
    click_on "Update Addtaxi"

    assert_text "Addtaxi was successfully updated"
    click_on "Back"
  end

  test "destroying a Addtaxi" do
    visit addtaxis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Addtaxi was successfully destroyed"
  end
end
