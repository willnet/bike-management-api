Rails.application.routes.draw do
  constraints format: :json do
    resources :bikes, only: [:create]
    resources :brands, only: [:show]
  end
  patch '/bikes/', to: 'bikes#update', defaults: {format: :json}
end
