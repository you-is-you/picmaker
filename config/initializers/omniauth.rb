Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 
    Rails.application.secrets.twitter_api_key,
    Rails.application.secrets.twitter_api_secret,
    :callback_path => "/auth/twitter/callback",
    :secure_image_url => 'true',
    :image_size => 'normal'
end

