Rails.application.routes.draw do
  root to: "home#index"
  get '/create', to: 'home#create'
  post '/create/progress', to: 'home#create_prog', as: 'createProgress'
  get '/:blog_id/edit', to: 'home#update', as: 'edit'
  patch '/:getId/edit/progress', to: 'home#update_prog', as: 'updateProgress'
  delete '/:getId/delete', to: 'home#destroy', as: 'destroyProgress'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
