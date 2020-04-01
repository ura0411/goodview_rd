Rails.application.routes.draw do
  get 'top', to: 'top#index'

  get 'form', to: 'form#index'
  post 'form', to: 'form#index'
  
end
