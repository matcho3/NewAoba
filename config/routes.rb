Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
   
  get "user/index"
  get "user/show"
  get "user/new"
  get "user/edit"
  get "user/confirm"
  get "user/create"
  get "user/update"
  get "user/destroy"
  root  'about#index'
  get "sessions/create"
  match '/signin',to:'sessions#new',via:'get'
  match '/signout',to:'sessions#destroy',via:'delete'
   # match '/confirm/:id',to:'users#confirm', as:'user_confirm', via:'get'
   match '/driver/:id',to:'drivers#new',as:'resister_driver', via:'get'
   match '/answer',to:'answers#answer',via:'get'

  resources :answers
  resources :questions
  resources :operations
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


end
