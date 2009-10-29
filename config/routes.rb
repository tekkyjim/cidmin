ActionController::Routing::Routes.draw do |map|
  map.resources :cities

  map.resources :cities

  map.resources :cities

  map.root :controller => 'high_voltage/pages', :action => 'show', :id => 'home'
  map.resources :characters
end
