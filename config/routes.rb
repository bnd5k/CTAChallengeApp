CTAChallengeApp::Application.routes.draw do

  root :to => 'users#index'
  
  get '/users', :controller => :users, :action => :index, :as => :users
  get '/user/:id', :controller => :users, :action => :show, :as => :user

  get '/users/new', :controller => :users, :action => :new, :as => :new_user
  post '/users/create', :controller => :users, :action => :create

  get '/user/:id/edit', :controller => :users, :action => :edit, :as => :edit_user
  put 'user/:id/update', :controller => :users, :action => :update

  delete 'users/:id', :controller => :users, :action => :destroy




end
