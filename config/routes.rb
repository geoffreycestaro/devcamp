Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'
  
  root 'pages#home'
  
end
