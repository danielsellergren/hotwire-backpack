Rails.application.routes.draw do
  root "backpacks#index"

  resources :backpacks, only: [:index, :show]

  post '/backpacks/:id/add/:item_id', to: 'backpacks#add_item', as: :add_item_backpack
  delete '/backpackss/:id/remove/:item_id', to: 'backpacks#remove_item', as: :remove_item_backpack
end
