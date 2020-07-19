Rails.application.routes.draw do
  devise_for :users
  root :to => 'tv_shows#index'
  resources :tv_shows, only: [:index] do
    member do
      post :mark_favorite 
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
