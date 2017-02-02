class CreateWifiSignals < ActiveRecord::Migration[5.0]
  def change
    create_table :wifi_signals do |t|
      t.string :SSID
      t.decimal :RSSI

      t.timestamps
    end
  end
end
