ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.resources :users, :only => [:create]
  map.resources :messages, :only => [:index, :create]

  map.root      :controller => :messages, :action => :index
end
