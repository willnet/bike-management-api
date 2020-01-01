Rails.application.routes.draw do
  constraints format: :json do
    resources :bikes, only: [:create]
  end
  get '/brands/:name', to: 'brands#show', defaults: {format: :json}
  patch '/bikes/', to: 'bikes#update', defaults: {format: :json}
end
