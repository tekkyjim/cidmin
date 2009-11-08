ActionController::Routing::Routes.draw do |map|
  map.resources :transactions
  map.resources :cities
  map.resources :users
  map.resources :characters
  map.root :controller => 'high_voltage/pages', :action => 'show', :id => 'home'
end
