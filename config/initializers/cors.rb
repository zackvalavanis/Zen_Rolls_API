Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000', 'https://zen-rolls-e7p3i2tee-zackvalavanis-projects.vercel.app','http://localhost:5173'
    resource '*', 
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
