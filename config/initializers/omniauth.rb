OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '45353587395-d215i4r1pjmkkkcdibmd09a3hk8baf56.apps.googleusercontent.com', 'TIlQCqokXXqyh7MdhMespA8u', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
