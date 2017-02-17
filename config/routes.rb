Rails.application.routes.draw do
 
# post 'comments', to: 'comments#create'

# delete 'comments/:id', to: 'comments#destroy', as: 'comment'

resources :comments, only: [:create, :destroy]


	# to login form
  get '/login', to:'login#new'

# check to see if we have a user, then set session [:user_id]
  post '/login', to:'login#create'


# to log out
  delete '/logout', to: 'login#destroy'

  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'home#index'

get '/goodbye', to: 'greeting#goodbye'

get '/hello', to: 'greeting#hello'

get '/post', to: 'comments#posts'

get '/comments', to: 'comments#comments'



end
