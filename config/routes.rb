Rails.application.routes.draw do
  root to: "home#index"
  get '/create', to: 'home#create'
  post '/create/progress', to: 'home#create_prog', as: 'createProgress'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
