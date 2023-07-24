Rails.application.routes.draw do
  resources :departments
  resources :employees do
    member do
      get :preview
    end
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
