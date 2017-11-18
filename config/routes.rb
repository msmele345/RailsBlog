Rails.application.routes.draw do
    resources :posts
    root "posts#index"
end


##time_ago_in_words
##link_to