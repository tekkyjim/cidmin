ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'high_voltage/pages', :action => 'show', :id => 'home'
  map.resources :characters, :only => [:new]
end
