Rails.application.routes.draw do
    
    resources :users, except:[:new]
    resources :articles
    root 'welcome#home'
    
    get 'about', to: 'welcome#about'
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :categories, except: [:destroy]
end
