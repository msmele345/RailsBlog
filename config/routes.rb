Rails.application.routes.draw do
    resources :posts do
      resources :comments
    end
    root "posts#index"

    get '/about', to: 'pages#about'


    # these routes are for showing users a login form, logging them in, and logging them out.
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    ##user auth
    get '/signup' => 'users#new'
    post '/users' => 'users#create'

end


##time_ago_in_words
##link_to
##new_post_path
##flash.each
##render

##nest the resources method call for has many releationships.