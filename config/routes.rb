Rails.application.routes.draw do

  resources :wifi_signals, only: [:index, :show]

  resources :devices, only: [:index, :show, :create] do
    resources :wifi_signals,
    controller: 'device_wifi_signals',
    only: [:index, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
