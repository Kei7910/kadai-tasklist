Rails.application.routes.draw do
  root to: 'tasks#index'
  
  # CRUD
  # get 'tasks/:id', to: 'tasks#show'
  get 'login', to: 'sessions#new'
  # post 'tasks', to: 'tasks#create'
  post 'login', to: 'sessions#create'
  # put 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
  delete 'logout', to: 'sessions#destroy'
  
  # index: show の補助ページ
  # get 'tasks', to: 'tasks#index'
  
  # new: 新規作成用のフォームページ
  # get 'tasks/new', to: 'tasks#new'
  
  # edit: 更新用のフォームページ
  # get 'tasks/:id/edit', to: 'tasks#edit'
  
  get 'signup', to: 'users#new'
  
  #上記はすべて下記１行で置き換えられる
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end
