Rails.application.routes.draw do
  resources :merchants, only: [:index, :show] do
    resources :items, only: [:show]
  end
end
