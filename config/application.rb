require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DrTuts
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
	config.assets.initialize_on_precompile = false	
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

# Enables GZip compression in Heroku Production
module YourApp
  class Application < Rails::Application
    config.middleware.use Rack::Deflater
    config.serve_static_assets = true
	config.static_cache_control = "public, max-age=2419200"
  end
end

