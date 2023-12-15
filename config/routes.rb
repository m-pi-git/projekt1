Rails.application.routes.draw do
  resources :friends, only: %i[index create destroy]
  resources :profiles
  devise_for :users

  resources :messages do
    collection do
      get 'received'
      get 'sent'
    end
    member do
      delete 'destroy'
    end
  end

  root 'home#home'
end
