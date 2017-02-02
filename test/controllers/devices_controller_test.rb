require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get devices_url, as: :json
    assert_response :success
  end

  test "should create device" do
    device_id = 11223344556677
    assert_difference('Device.count') do
      post devices_url, params: { device: { device_id: device_id } }, as: :json
    end

    assert_response :created
  end

  test "should not create duplicate device" do
    assert_difference('Device.count', 0) do
      post devices_url, params: { device: { device_id: @device.device_id } }, as: :json
    end

    assert_response :unprocessable_entity
  end

  test "should show device" do
    get device_url(@device.device_id), as: :json
    assert_response :success
  end
  
end
