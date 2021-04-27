Rails.application.routes.draw do
  devise_for :users, controllers: { regitrations: 'user_registrations/registrations' } #specify user_registrations controller so Devise knows where to look
  get 'home/index'
  get 'gallery/index'
  resources :losts
  resources :founds

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pet_reports do
    resources :comments
  end
end
