Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs

  ## Create a new resource/path.
  get 'about', to: 'blogs#about'

  ## Set application's root.
  root 'blogs#index'

end
