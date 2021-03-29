Rails.application.routes.draw do
  resources :found_reports
  resources :lost_reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
