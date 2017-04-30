Rails.application.routes.draw do
  root to: 'tasks#index'
  
  # CRUD
  # get 'tasks/:id', to: 'tasks#show'
  # post 'tasks', to: 'tasks#create'
  # put 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
  
  # index: show の補助ページ
  # get 'tasks', to: 'tasks#index'
  
  # new: 新規作成用のフォームページ
  # get 'tasks/new', to: 'tasks#new'
  
  # edit: 更新用のフォームページ
  # get 'tasks/:id/edit', to: 'tasks#edit'
  
  #上記はすべて下記１行で置き換えられる
  resources :tasks
  
end
