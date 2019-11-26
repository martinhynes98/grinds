Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  resources :line_items
  resources :carts
  root to: 'store#index', as: 'store'
  get 'store/index'
  resources :tutors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
