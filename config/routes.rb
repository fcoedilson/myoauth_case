Rails.application.routes.draw do
  #devise_for :usuarios
  root 'home#index'
  devise_for :usuarios, controllers: { omniauth_callbacks: 'usuarios/omniauth_callbacks' }

  #resources :products

end
