Rails.application.routes.draw do
  resources :notifications
  resources :userprofiles
  get 'test/index'

  resources :births
  get 'profile/my'

  get '/profile_other/:id', to: 'profile#other' 

  get 'friends/suscribe'

  post '/profile_other/:id', to: 'profile#update', as: 'profile'
  post '/profiled/:id', to: 'profile#destroy', as: 'deleted'

  get '/friends/notsuscribe', to: 'friends#notsuscribe'
  resources :friends
  resources :notes
  get 'welcome/index'
  resources :notifications do 
    collection do 
        post :mark_as_read
    end 
  end
  resources :gifts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	root :to => 'welcome#index'
	  get '/home' => 'home#index'


	  get '/auth/:provider/callback' => 'sessions#create'
	  get '/signin' => 'sessions#new', :as => :signin
	  get '/signout' => 'sessions#destroy', :as => :signout

end
