Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  get 'comments/show'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/create'
  get 'comments/destroy'
  root to: 'posts#index'
  
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
