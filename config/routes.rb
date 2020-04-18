Rails.application.routes.draw do
  post '/favorite/book_id' => 'favorites#create', as: 'favorite'
  delete '/favorite/book_id' => 'favorites#destroy', as: 'unfavorite'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:new, :create, :show, :index, :destroy, :edit, :update]
  resources :users, only:[:show, :index, :edit, :update]
end
