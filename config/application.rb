require_relative "boot"
require "rails/all" # Ensure you have this line

module ZenRollsApi
  class Application < Rails::Application
    config.load_defaults 7.1

    # Set secret_key_base to read from the environment variable
    config.secret_key_base = ENV['SECRET_KEY_BASE']

    # Check if Rails.logger is available before trying to log
    if Rails.logger
      Rails.logger.debug "Secret Key Base: #{config.secret_key_base}"
    end

    config.autoload_lib(ignore: %w(assets tasks))
  end
end
