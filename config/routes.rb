Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only:[:create, :destroy]
    resources :books, only: [:index, :show]
    resources :bookshelves, only: [:index, :show, :create, :destroy]
    post "shelvings", {to: 'books#shelve'}
    get 'all_shelved_books', {to: 'bookshelves'}
  end
  root "static_pages#root"

end
