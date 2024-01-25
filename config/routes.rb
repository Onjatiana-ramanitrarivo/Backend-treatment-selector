Rails.application.routes.draw do

  get 'ping' => 'application#ping'

  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :show, :create]
    end
  end    
end
