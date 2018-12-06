Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [ :index, :show, :update, :create, :destroy ]
    end
  end

  # root to:'api/v1/products#index', defaults: { format: :json }
  get '/', to: 'pages#home'
  get '/api/v1/products/:id/buy', to: 'api/v1/products#buy' , as: :api_v1_product_buy, defaults: {:format=>:json}

end
