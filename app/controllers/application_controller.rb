class ApplicationController < ActionController::Base
    protect_from_forgery :except => [:index,:ogp]
end
