Rails.application.routes.draw do
  root "home#index"

  get "about", to: "about#index", as: :about

  get "contact", to: "contact#index", as: :contact
  post "contact", to: "contact#create"

  get "forum", to: "forum#index", as: :forum
  post "create_comment", to: "forum#create_comment", as: :create_comment
  post "create_reply", to: "forum#create_reply", as: :create_reply
end
