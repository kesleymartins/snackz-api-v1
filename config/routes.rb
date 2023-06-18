Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: :create
      
      scope :orders do
        get "/results", to: "orders#results"
        get "/descriptions", to: "orders#descriptions"
      end
    end
  end

  resources :orders, only: :destroy

  root to: 'orders#index'
end
