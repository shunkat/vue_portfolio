Rails.application.routes.draw do
  resources :contents
  get 'hello/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hello#index"

  scope '/api' do
    get '/contents', to: 'contents#index', defaults: { format: :json }
    get '/contents/:id', to: 'contents#show', defaults: { format: :json }
  end




end
