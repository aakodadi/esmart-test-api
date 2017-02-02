require 'test_helper'

class WifiSignalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wifi_signal = wifi_signals(:one)
  end

  test "should get index" do
    get wifi_signals_url, as: :json
    assert_response :success
  end

  test "should create wifi_signal" do
    assert_difference('WifiSignal.count') do
      post wifi_signals_url, params: { wifi_signal: { RSSI: @wifi_signal.RSSI, SSID: @wifi_signal.SSID } }, as: :json
    end

    assert_response 201
  end

  test "should show wifi_signal" do
    get wifi_signal_url(@wifi_signal), as: :json
    assert_response :success
  end

  test "should update wifi_signal" do
    patch wifi_signal_url(@wifi_signal), params: { wifi_signal: { RSSI: @wifi_signal.RSSI, SSID: @wifi_signal.SSID } }, as: :json
    assert_response 200
  end

  test "should destroy wifi_signal" do
    assert_difference('WifiSignal.count', -1) do
      delete wifi_signal_url(@wifi_signal), as: :json
    end

    assert_response 204
  end
end
