# config/initializers/cors.rb

# Be sure to restart your server when you modify this file.

# Use this configuration to allow CORS requests in your application
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Allows requests from any origin
    origins '*'

    # Allows the following HTTP methods:
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end

  # Example for a specific domain:
  # allow do
  #   origins 'https://your-frontend-app.com'
  #   resource '*',
  #     headers: :any,
  #     methods: [:get, :post, :put, :patch, :delete, :options, :head]
  # end
end
