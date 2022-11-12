
Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  get '/admin/new', to: 'admin#new'
  post '/create_user', to: 'admin#create_user'
  get '/admin/trader_list', to: 'admin#trader_list'
  get '/admin/trader_details/:id', to: 'admin#trader_details'
  get '/admin/trader/:id/edit', to: 'admin#edit_trader'
  put '/admin/trader_list', to: 'admin#update_trader'

  root "posts#index"
  resources :traders
  devise_for :users
  resources :posts
end