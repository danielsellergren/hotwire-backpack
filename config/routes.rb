Rails.application.routes.draw do
  root "backpacks#index"

  resources :backpacks, only: [:index, :show]
end
