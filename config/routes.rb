Rails.application.routes.draw do
  root "home#index"

  get "about", to: "about#index", as: :about

  get "contact", to: "contact#index", as: :contact
  post "contact", to: "contact#create"
end
