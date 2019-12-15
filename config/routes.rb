Rails.application.routes.draw do
  resources :bikes, only: [:create, :update]
  resources :brands, only: [:show]
end
