Rails.application.routes.draw do
  get 'sessions_gallery/index'
  get 'wedding_gallery/index'
  root to: "pages#home"
  post "contact-email", to: "pages#contact_email", as: "contact_email"
  resources :contact_submissions, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/portfolio', to: 'portfolio#index'
  get '/wedding_gallery', to: 'wedding_gallery#index'
  get '/sessions_gallery', to: 'sessions_gallery#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
