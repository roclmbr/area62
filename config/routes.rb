Rails.application.routes.draw do
    
    resources :users, except:[:new]
    resources :articles
    root 'welcome#home'
    
    get 'about', to: 'welcome#about'
    get 'signup', to: 'users#new'
end
