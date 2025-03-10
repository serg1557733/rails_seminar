Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:create]
    member do
      get :chef_info
    end
  end

end
