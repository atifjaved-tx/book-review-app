Rails.application.routes.draw do
  devise_for :users
  root "authors#index"

  # resource:author
   resources :authors


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
