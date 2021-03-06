Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  resources :events, only: :show  do
    resources :tickets
    post 'tickets/create', to: 'tickets#create'
    get 'tickets/no_tickets', to: 'notickets#error'
  end

  root to: 'events#index', via: :get
end
