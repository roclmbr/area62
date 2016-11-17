Rails.application.routes.draw do
    
  resources :users
    root 'welcome#home'
    
    get 'about', to: 'welcome#about'
    
end
