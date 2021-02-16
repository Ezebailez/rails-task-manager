Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Create one task
  get 'tasks/new', to: 'tasks#new'

  # Submit the form and create new task
  post 'tasks', to: 'tasks#create'

  # Read one task
  get 'task/:id', to: 'tasks#show', as: :task

  # Update ONE SPECIFIC task
  get 'tasks/:id/edit', to: 'tasks#edit'

  # submit the form and update the record of the task
  patch 'tasks/:id', to: 'tasks#update'

  # delete ONE SPECIFIC task
  delete 'tasks/:id', to: 'tasks#destroy'
end
