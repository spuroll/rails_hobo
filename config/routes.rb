Rails.application.routes.draw do

  get 'articles/new'

  get 'articles/show'

  get 'articles/index'

  resources :articles

end
