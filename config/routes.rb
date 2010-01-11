ActionController::Routing::Routes.draw do |map|
  map.resources :messages, :only => [:index]
  map.root      :controller => :messages, :action => :index
end
