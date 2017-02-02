require 'test_helper'

class WifiSignalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wifi_signal = wifi_signals(:one)
  end

  test "should get index" do
    get wifi_signals_url, as: :json
    assert_response :success
  end

  test "should show wifi_signal" do
    get wifi_signal_url(@wifi_signal), as: :json
    assert_response :success
  end

end
