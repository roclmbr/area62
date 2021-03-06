Rails.application.routes.draw do
    
  resources :trails
  resources :images
    mount Ckeditor::Engine => '/ckeditor'
    resources :users, except:[:new]
    resources :articles
    root 'welcome#home'
    
    get 'about', to: 'welcome#about'
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :categories, except: [:destroy]
    
    resources :articles do
        resources :comments
    end
end
