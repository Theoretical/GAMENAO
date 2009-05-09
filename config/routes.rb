ActionController::Routing::Routes.draw do |map|


  map.exceptions 'logged_exceptions/:action/:id', :controller => 'logged_exceptions'

  map.resources :posts
  
  map.root :controller => "index"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
