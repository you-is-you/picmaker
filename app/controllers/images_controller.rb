class ImagesController < ApplicationController
    require "twitter"
    require 'base64'
    require 'tempfile'
    require "os"
    use OmniAuth::Strategies::Developer 

    before_action :set_twitter_client, only: [:tweet]

    def index
        @image = Image.new
    end

    def check
        
    end

    def tweet
        begin
            @data = base64toimage(params[:picture])   
            @twitter.update_with_media("#こめんとメーカー　https://www.commentmaker.net/",@data)
            redirect_to session[:oauth_url]
        rescue => e
            p error = e
            redirect_to root_path
        end
    end

    def login
        begin
            auth = request.env['omniauth.auth']
            session[:name] = auth.info.name
            session[:image] = auth.info.image
            session[:description] = auth.info.description 
            session[:uid] = auth.uid
            session[:oauth_token] = auth.credentials.token
            session[:oauth_token_secret] = auth.credentials.secret
            session[:oauth_url] = auth.info.urls.Twitter
            redirect_to root_path
        rescue => e
            p error = e
        end
    end

    def logout
        session[:name] = nil
        session[:image] = nil
        session[:description] = nil
        session[:uid] = nil
        session[:oauth_token] = nil
        session[:oauth_token_secret] = nil
        session[:oauth_url] = nil
        redirect_to root_path
    end

  
  private

  def base64toimage(base64)
        file = Tempfile.new('.png')
        file.binmode
        file << Base64.decode64(base64)
        file.rewind
        return file
  end

    def set_twitter_client
        begin
            @twitter = Twitter::REST::Client.new do |config|
            config.consumer_key        = Rails.application.secrets.twitter_api_key
            config.consumer_secret     = Rails.application.secrets.twitter_api_secret
            config.access_token = session[:oauth_token]
            config.access_token_secret = session[:oauth_token_secret]
            end
        rescue => e
            p error = e
        end
    end

    def information
    end

    def privacy_policy
    end

    def image_params
        params.require(:image).permit(:text, :picture)
    end

end
