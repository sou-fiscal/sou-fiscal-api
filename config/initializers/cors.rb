# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins 'example.com'
#
#     resource '*',
#       headers: :any, 'Content-Type': 'application/json', 'Access-Control-Allow-Headers': 'Content-Type','Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Methods ' : "GET, POST, OPTIONS, PUT, PATCH, DELETE",

#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
