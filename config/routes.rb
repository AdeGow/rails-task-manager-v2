Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task_update
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_delete

  get 'tasks/:id', to: 'tasks#show', as: :task

end
