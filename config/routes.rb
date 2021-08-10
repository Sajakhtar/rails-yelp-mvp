Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # resources :reviews, only: %i[new create]
    resources :reviews, only: %i[create]
  end

  # resources :reviews, only: %i[edit update destroy]
end
