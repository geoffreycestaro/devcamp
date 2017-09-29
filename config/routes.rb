Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'log_out', sign_up: 'register'}
  resources :portfolios, except: [:show]

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about_me' => 'pages#about'
  get 'contact' => 'pages#contact'

  root 'pages#home'

end
