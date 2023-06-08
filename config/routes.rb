Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: %i[ create ]
      
      scope :orders do
        get "/results", to: "orders#results"
      end
    end
  end

  resources :orders, only: %i[ destroy ]

  root to: 'orders#index'
end
