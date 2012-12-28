Ofmysize::Application.routes.draw do

  root :to => "products#index"
  resources :products, :only => [:search]

  post '/products', :controller => 'products', :action => 'search'

end