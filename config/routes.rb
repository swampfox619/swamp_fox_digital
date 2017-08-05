Rails.application.routes.draw do
  get 'blog/index'

  get 'blog/show'

  get 'blog/new'

  get 'blog/edit'

  root 'welcome#index'

  get 'welcome/about'

  get 'contact', :controller => 'welcome', :action => 'contact'
  get 'about', :controller => 'welcome', :action => 'about'
  get 'pricing', :controller => 'welcome', :action => 'pricing'
  
end
