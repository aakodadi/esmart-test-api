class WifiSignalsController < ApplicationController
  before_action :set_wifi_signal, only: [:show]

  # GET /wifi_signals
  def index
    @wifi_signals = WifiSignal.all

    render json: @wifi_signals
  end

  # GET /wifi_signals/1
  def show
    render json: @wifi_signal
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wifi_signal
      @wifi_signal = WifiSignal.find(params[:id])
    end
end
