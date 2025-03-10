require_relative "boot"
require "rails/all" # Ensure you have this line

module ZenRollsApi
  class Application < Rails::Application
    config.load_defaults 7.1

    # Set secret_key_base to read from the environment variable
    config.secret_key_base = ENV['SECRET_KEY_BASE']

    # Add logging to check the secret_key_base
    Rails.logger.debug "Secret Key Base: #{config.secret_key_base}"

    config.autoload_lib(ignore: %w(assets tasks))
  end
end
