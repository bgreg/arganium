Rails.application.routes.draw do
  root 'welcome#index'

  get 'rooms/show'
  get 'rooms', to: 'rooms#show'

  get 'challenges/:id/', to: 'challenges#index'
  get 'challenges/:id/:component', to: 'challenges#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
