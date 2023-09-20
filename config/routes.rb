Rails.application.routes.draw do
  root to: "pages#home"
  post "contact-email", to: "pages#contact_email", as: "contact_email"
  resources :contact_submissions, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/portfolio', to: 'portfolio#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
