Rails.application.routes.draw do
  get "/events", to: "events#get_events"
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
