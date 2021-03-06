Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do      
      resources :login
      resources :users do
        resources :appointments
      end

      resources :doctors do
        resources :appointments
      end      
    end
  end
end
