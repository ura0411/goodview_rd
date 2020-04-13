Rails.application.routes.draw do

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

  root 'top#index'

end
