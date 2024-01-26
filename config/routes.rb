Rails.application.routes.draw do

  get 'ping' => 'application#ping'

  namespace :api do
    namespace :v1 do

      get 'treatments' => 'treatments#index_all'

      resources :categories, only: [:index, :show, :create, :destroy, :update] do
        resources :treatments, only: [:index, :create, :destroy, :update]
      end
    end
  end    
end
