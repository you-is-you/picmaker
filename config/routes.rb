Rails.application.routes.draw do
    
    post '/images/tweet'
    get 'images/information'
    get 'images/privacy_policy'
    get 'images/index'
    root 'images#index'
  
    #itwitterログイン
    get "/auth/:provider/callback" => "images#login" 
    get 'auth/signout' => 'images#logout'

    get "/logs", to: "stackdriver#logs"
    get "/errors", to: "stackdriver#errors"
end
