Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  # use_doorkeeper

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users
    end
  end
end
