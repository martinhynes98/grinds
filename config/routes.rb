Rails.application.routes.draw do
  root to: 'store#index', as: 'store'
  get 'store/index'
  resources :tutors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
