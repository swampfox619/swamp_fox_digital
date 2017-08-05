Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/about'

  get 'contact', :controller => 'welcome', :action => 'contact'
  get 'about', :controller => 'welcome', :action => 'about'
  get 'pricing', :controller => 'welcome', :action => 'pricing'
  
end
