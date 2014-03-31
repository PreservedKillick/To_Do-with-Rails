ToDo::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks/:id', {:via => :get, :to => 'tasks#show'})
end
