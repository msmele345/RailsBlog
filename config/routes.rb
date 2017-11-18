Rails.application.routes.draw do
    resources :posts do
      resources :comments
    end
    root "posts#index"
end


##time_ago_in_words
##link_to
##new_post_path
##flash.each
##render

##nest the resources method call for has many releationships.