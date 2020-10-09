Rails.application.routes.draw do

  devise_for :users
  root 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  get '/mypage' => 'users#mypage'
  resources :books
  get "home/about" => "homes#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
