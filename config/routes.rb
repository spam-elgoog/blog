# frozen_string_literal: true

Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  get 'welcome/index'

  root 'articles#index'
end
