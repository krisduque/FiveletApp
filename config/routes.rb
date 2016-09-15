Rails.application.routes.draw do
  resources :fivelets do
    resources :comments, only: :create
  end
  root 'fivelets#index'
  get 'login'  => 'user_sessions#new'
  post 'login' => 'user_session#create'
  delete 'logout' => 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
