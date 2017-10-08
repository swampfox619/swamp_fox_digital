Rails.application.routes.draw do

  root 'welcome#index'

  resources :blogs


  get 'welcome/about'

  get 'contact', :controller => 'welcome', :action => 'contact'
  get 'about', :controller => 'welcome', :action => 'about'
  get 'seo', :controller => 'welcome', :action => 'seo'
  get 'process', :controller => 'welcome', :action => 'process'
  get 'services', :controller => 'welcome', :action => 'services'

end
