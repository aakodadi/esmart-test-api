class AddDeviceRefToWifiSignals < ActiveRecord::Migration[5.0]
  def change
    add_reference :wifi_signals, :device, foreign_key: true
  end
end
