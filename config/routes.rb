# frozen_string_literal: true

Rails.application.routes.draw do
  resources :documents, only: %i[index show update destroy new create]
  root "documents#index"
end
