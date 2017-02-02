class Device < ApplicationRecord

    validates :device_id, presence: true, 
    uniqueness: { case_sensitive: true }

    has_many :wifi_signals, dependent: :destroy

end
