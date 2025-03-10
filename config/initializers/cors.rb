Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Allow all origins, change this to specific origins if needed in production
    origins '*'  

    # Allow any headers
    resource '*', 
      headers: :any,  

      # Allowed methods for all resources
      methods: [:get, :post, :put, :patch, :delete, :options, :head],  

      # Exposed headers, useful for frontend JavaScript to access certain headers
      expose: ['Access-Control-Allow-Origin', 'Access-Control-Allow-Credentials'],  

      # Allow credentials like cookies or HTTP authentication tokens
      credentials: true  
  end
end
