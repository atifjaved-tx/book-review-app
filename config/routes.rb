Rails.application.routes.draw do
  resources :categories
  resources :reviews
  devise_for :users
  # resource:author
   resources :authors

  root "authors#index"


   devise_scope :user do
    authenticated :user do
    root 'author#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
     # root to: "devise/sessions#new"

  end
  
   # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
