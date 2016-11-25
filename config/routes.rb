Rails.application.routes.draw do
    
    resources :users
    resources :articles
    root 'welcome#home'
    
    get 'about', to: 'welcome#about'
    
end
