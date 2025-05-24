Rails.application.configure do
  next unless Rails.env.development?

  config.hosts << /.*\.ngrok\.io/
  config.hosts << /.*\.ngrok-free\.app/
end
