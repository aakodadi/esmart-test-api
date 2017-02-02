class WifiSignal < ApplicationRecord

    # 32 charaters is not arbitrary.
    # It's the actual maximum SSID length in the IEEE 802 standards
    validates :SSID, presence: true, length: { maximum: 32 }
    # RSSI is in dBm which is alwase less than or equal to 0
    validates :RSSI, presence: true, numericality: { less_than_or_equal_to: 0 }

    belongs_to :device

end
