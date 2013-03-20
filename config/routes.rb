Flashme::Application.routes.draw do
  root to: "welcome#show", via: :get

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :decks do
    resources :cards, except: [:index]
  end
end
