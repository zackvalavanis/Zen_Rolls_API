Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # Allow all origins

    resource '*', 
      headers: :any,  # Allow any headers
      methods: [:get, :post, :put, :patch, :delete, :options, :head],  # Allowed methods
      expose: ['Access-Control-Allow-Origin', 'Access-Control-Allow-Credentials'],  # Exposed headers
      credentials: true  # Allow credentials (cookies, HTTP authentication)
  end
end
