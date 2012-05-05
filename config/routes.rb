CTAChallengeApp::Application.routes.draw do

  root :to => 'challenges#index'
 
  get '/users', :controller => :users, :action => :index, :as => :users
  get '/user/:id', :controller => :users, :action => :show, :as => :user
  get '/users/new', :controller => :users, :action => :new, :as => :new_user
  post '/users/', :controller => :users, :action => :create
  get '/user/:id/edit', :controller => :users, :action => :edit, :as => :edit_user
  put 'user/:id/update', :controller => :users, :action => :update
  delete 'user/:id', :controller => :users, :action => :destroy

  get '/challenges', :controller => :challenges, :action => :index, :as => :challenges
  get '/challenge/:id', :controller => :challenges, :action => :show, :as => :challenge
  get '/challenges/new', :controller => :challenges, :action => :new, :as => :new_challenge
  post '/challenges/', :controller => :challenges, :action => :create
  get '/challenges/:id/edit', :controller => :challenges, :action => :edit, :as => :edit_challenge
  put '/challenges/:id/update', :controller => :challenges, :action => :update
  delete '/challenge/:id', :controller => :chalenges, :action => :destroy

  get '/articles', :controller => :articles, :action => :index, :as => :articles
  get '/article/:id', :controller => :articles, :action => :show, :as => :article
  get '/articles/new', :controller => :articles, :action => :new, :as => :new_article
  post '/articles', :controller => :articles, :action => :create
  get '/articles/:id/edit', :controller => :articles, :action => :edit, :as => :edit_article
  put '/articles/:id/update', :controller => :artciles, :action => :update
  delete '/article/:id', :controller => :articles, :action => :destroy

end
