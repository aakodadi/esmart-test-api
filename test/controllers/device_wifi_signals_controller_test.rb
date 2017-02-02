require 'test_helper'

class DeviceWifiSignalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wifi_signal = wifi_signals(:one)
    @device = devices(:one)
  end

  test "should create wifi_signal" do
    assert_difference('WifiSignal.count') do
      post device_wifi_signals_url(@device.device_id),
      params: { wifi_signal: { RSSI: @wifi_signal.RSSI, SSID: @wifi_signal.SSID } }, as: :json
    end

    assert_response :created
  end

  test "should not create wifi_signal with positive RSSI" do
    post device_wifi_signals_url(@device.device_id),
    params: { wifi_signal: { RSSI: 9.9, SSID: @wifi_signal.SSID } }, as: :json
    assert_response :unprocessable_entity
  end
end
