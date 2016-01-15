Rails.application.routes.draw do

  devise_for :users

  root "games#index"
  resources :games do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

end
