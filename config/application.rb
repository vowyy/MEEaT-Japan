require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    #rails g した時の挙動
    config.generators do |g|
      g.skip_routes true
      g.stylesheets false
      g.javascript false
      g.helper false
    end
  end
end
