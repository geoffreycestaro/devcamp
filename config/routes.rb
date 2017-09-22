Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  resources :blogs
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'
  
  root 'pages#home'
  
end
