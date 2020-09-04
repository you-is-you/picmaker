Rails.application.routes.draw do
    
    resources :quizzes do
    end
    resources :tests do
        collection do
         get 'list'
         get 'user'
       end
    end
    
    root 'mains#index'

    # get '/tests/:id/:user_name'  => 'tests#show'

    post '/images/tweet'
    get 'images/information'
    get 'images/privacy_policy'
    get 'images/index'
    get 'images/check'
    get 'images/index'

    #twitterログイン
    get "/auth/:provider/callback" => "images#login" 
    get 'auth/signout' => 'images#logout'

    get "/logs", to: "stackdriver#logs"
    get "/errors", to: "stackdriver#errors"
end
