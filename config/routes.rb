Rails.application.routes.draw do
  resources :documents
  root "documents#index"
end
