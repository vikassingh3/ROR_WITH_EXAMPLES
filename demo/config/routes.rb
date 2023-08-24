Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
 
 
  post "sign_up", to: "login#user_sign_up"
  post "sign_in", to: "login#user_sign_in"
  get "get_user/:id", to: "registrations#show"
  patch "update_user/:id", to: "registrations#update"
  delete "delete_user/:id", to: "registrations#destroy"
  post "log_out/:id", to: "registrations#log_out"
  post "reset_password", to: "registrations#reset_password"
  post "forgot_password", to: "login#forgot_password"
  get "get_all_users", to: "registrations#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
