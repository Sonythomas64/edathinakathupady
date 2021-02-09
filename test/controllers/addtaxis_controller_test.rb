require "test_helper"

class AddtaxisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addtaxi = addtaxis(:one)
  end

  test "should get index" do
    get addtaxis_url
    assert_response :success
  end

  test "should get new" do
    get new_addtaxi_url
    assert_response :success
  end

  test "should create addtaxi" do
    assert_difference('Addtaxi.count') do
      post addtaxis_url, params: { addtaxi: { Holdername: @addtaxi.Holdername, Phone: @addtaxi.Phone, Registration: @addtaxi.Registration, Taxi: @addtaxi.Taxi, Vehicle: @addtaxi.Vehicle, number: @addtaxi.number } }
    end

    assert_redirected_to addtaxi_url(Addtaxi.last)
  end

  test "should show addtaxi" do
    get addtaxi_url(@addtaxi)
    assert_response :success
  end

  test "should get edit" do
    get edit_addtaxi_url(@addtaxi)
    assert_response :success
  end

  test "should update addtaxi" do
    patch addtaxi_url(@addtaxi), params: { addtaxi: { Holdername: @addtaxi.Holdername, Phone: @addtaxi.Phone, Registration: @addtaxi.Registration, Taxi: @addtaxi.Taxi, Vehicle: @addtaxi.Vehicle, number: @addtaxi.number } }
    assert_redirected_to addtaxi_url(@addtaxi)
  end

  test "should destroy addtaxi" do
    assert_difference('Addtaxi.count', -1) do
      delete addtaxi_url(@addtaxi)
    end

    assert_redirected_to addtaxis_url
  end
end
