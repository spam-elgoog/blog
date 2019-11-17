# frozen_string_literal: true

Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  
  
  get 'sessions/new'
  resources :articles do
    resources :comments
  end

  resources :users

  get 'login', to: 'sessions#new', as: 'login'
  
  resources :sessions

  get 'welcome/index'

  root 'articles#index'
end
