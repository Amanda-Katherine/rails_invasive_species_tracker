Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
        :name => "google",
        :scope => ['contacts','plus.login','plus.me','email','profile'],
        :prompt => "select_account",
        :image_aspect_ratio => "square",
        :image_size => 50,
        :access_type => 'offline'
      }

    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']

    provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_SECRET']
end