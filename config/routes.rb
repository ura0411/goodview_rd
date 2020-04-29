Rails.application.routes.draw do

  devise_for :accounts
  get 'forms', to: 'forms#index'
  post 'forms', to: 'forms#add'

  get 'forms/thanks'
  get 'forms', to: 'forms/thanks#index'

  get 'forms/add'
  post 'forms', to: 'forms/add#index'

  get 'forms/delete/:id', to: 'forms#delete'

  get 'forms/show'

  get 'forms/edit/:id', to: 'forms#edit'
  patch  'forms/edit/:id', to: 'forms#edit'
  
  get 'top', to: 'top#index'

  get 'top/index01', to: 'top#index01'

  get 'top/index03', to: 'top#index03'

  root 'top#index'

end
