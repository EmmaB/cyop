require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cyop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    # allow local envs to be specified in config/local_env.yml
    config.before_configuration do
      env_file = Rails.root.join("config", "local_env.yml")
      if File.exists?(env_file)
        YAML.load_file(env_file).each do |key, value|
          ENV[key.to_s] = value
        end
      end
    end
  end
end
