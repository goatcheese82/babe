Rails.application.routes.draw do
  root 'guesses#index'
  resources :guesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
