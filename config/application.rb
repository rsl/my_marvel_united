require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyMarvelUnited
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Custom config
    config.time_zone = "Eastern Time (US & Canada)"
    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.helper_specs false
      g.controller_specs false
      g.view_specs false
      g.routing_specs false
    end
  end
end
