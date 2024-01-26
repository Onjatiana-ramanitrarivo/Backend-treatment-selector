Rails.application.routes.draw do

  get 'ping' => 'application#ping'

  namespace :api do
    namespace :v1 do
      
      get 'treatments' => 'treatments#index_all'
      get 'treatment_lines' => 'treatment_lines#index_all'

      resources :categories, only: [:index, :show, :create, :destroy, :update] do
        resources :treatments, only: [:index, :create, :destroy, :update] do 
          resources :treatment_lines, only: [:index, :create]
        end  
      end
    end
  end    
end
