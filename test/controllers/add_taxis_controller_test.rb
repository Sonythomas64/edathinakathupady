require "test_helper"

class AddTaxisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_taxi = add_taxis(:one)
  end

  test "should get index" do
    get add_taxis_url
    assert_response :success
  end

  test "should get new" do
    get new_add_taxi_url
    assert_response :success
  end

  test "should create add_taxi" do
    assert_difference('AddTaxi.count') do
      post add_taxis_url, params: { add_taxi: { Phonenumber: @add_taxi.Phonenumber, Registrationnumber: @add_taxi.Registrationnumber, TaxiHoldername: @add_taxi.TaxiHoldername, Vehicle: @add_taxi.Vehicle } }
    end

    assert_redirected_to add_taxi_url(AddTaxi.last)
  end

  test "should show add_taxi" do
    get add_taxi_url(@add_taxi)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_taxi_url(@add_taxi)
    assert_response :success
  end

  test "should update add_taxi" do
    patch add_taxi_url(@add_taxi), params: { add_taxi: { Phonenumber: @add_taxi.Phonenumber, Registrationnumber: @add_taxi.Registrationnumber, TaxiHoldername: @add_taxi.TaxiHoldername, Vehicle: @add_taxi.Vehicle } }
    assert_redirected_to add_taxi_url(@add_taxi)
  end

  test "should destroy add_taxi" do
    assert_difference('AddTaxi.count', -1) do
      delete add_taxi_url(@add_taxi)
    end

    assert_redirected_to add_taxis_url
  end
end
