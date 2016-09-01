Rails.application.routes.draw do
  
  resources :books
  resources :searches
  
  resources :acts do
    resources :appearers
    resources :horizontal_properties
    resources :effective_possessions
    resources :documents
    resources :marginalizations
    resources :assessments
    resources :properties
  end

  devise_for :users
 

  authenticated :user do
    root 'welcome#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root 'welcome#unregistered', as: :unregistered_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
