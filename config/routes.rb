Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :messages do
    collection do
      get 'received'
      get 'sent'
    end
  end

  root "messages#index"
end
