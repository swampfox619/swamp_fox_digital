Rails.application.routes.draw do

  root 'welcome#index'

  get 'products/index'

  resources :blogs;


  get 'welcome/about'

  get 'contact', :controller => 'welcome', :action => 'contact'
  get 'about', :controller => 'welcome', :action => 'about'
  get 'seo', :controller => 'welcome', :action => 'seo'
  get 'process', :controller => 'welcome', :action => 'process'
  
  get 'products', :controller => 'products', :action => 'index'
  get 'craftsman', :controller => 'products', :action => 'craftsman'
  get 'artisan', :controller => 'products', :action => 'artisan'
  get 'general_issue', :controller => 'products', :action => 'general_issue'

end
