Rails.application.routes.draw do
  root to: 'tasklists#index'
  
  # CRUD
  # get 'tasklists/:id', to: 'tasklists#show'
  # post 'tasklists', to: 'tasklists#create'
  # put 'tasklists/:id', to: 'tasklists#update'
  # delete 'tasklists/:id', to: 'tasklists#destroy'
  
  # index: show の補助ページ
  # get 'tasklists', to: 'tasklists#index'
  
  # new: 新規作成用のフォームページ
  # get 'tasklists/new', to: 'tasklists#new'
  
  # edit: 更新用のフォームページ
  # get 'tasklists/:id/edit', to: 'tasklists#edit'
  
  #上記はすべて下記１行で置き換えられる
  resources :tasklists
  
end
