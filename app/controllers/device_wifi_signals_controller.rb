class DeviceWifiSignalsController < ApplicationController
  before_action :set_device, only: [:create, :index]

  # GET devices/7cc466dcca8a2b6b/wifi_signals
  def index
    @wifi_signals = @device.wifi_signals

    render json: @wifi_signals
  end

  # POST devices/7cc466dcca8a2b6b/wifi_signals
  def create
    @wifi_signal = WifiSignal.new(wifi_signal_params)
    @wifi_signal.device = @device

    if @wifi_signal.save
      render json: @wifi_signal, status: :created, location: @wifi_signal
    else
      render json: @wifi_signal.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find_by!(device_id: params[:device_id])
    end

    # Only allow a trusted parameter "white list" through.
    def wifi_signal_params
      params.require(:wifi_signal).permit(:SSID, :RSSI)
    end
end
