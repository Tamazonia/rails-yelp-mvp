Rails.application.routes.draw do
  resources :restaurants do
    member do
      resources :reviews, only: [ :new, :create ]
    end
  end
end
