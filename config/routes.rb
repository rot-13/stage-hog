StageHog::Application.routes.draw do

  resources :project, only: [:index, :show]

  match '/environment/:id/use', to: 'environment#use', via: [:get], as: :use_environment
  match '/environment/:id/free', to: 'environment#free', via: [:get], as: :free_environment

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/:provider', :to => 'session#nothing', :as => 'sign_in', :defaults => {:provider => :github}
  root :to => 'landing_page#landing_page'

end
