Rails.application.routes.draw do

  root controller: :articles, action: :index

  resources :articles, only: [:show] do
    resources :comments, only: [:create]
  end

  get :craft, to: redirect('https://craftacademy.se')
end
