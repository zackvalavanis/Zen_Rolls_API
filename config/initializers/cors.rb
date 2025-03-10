Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:5173', 'https://zen-rolls-frontend-cwclm5qzl-zackvalavanis-projects.vercel.app'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ['Access-Control-Allow-Origin', 'Access-Control-Allow-Credentials'],
      credentials: true
  end
end
