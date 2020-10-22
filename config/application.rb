require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyPortfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.autoload_paths += %W(#{config.root}/lib)
    # Auto-load API and its subdirectories

    config.to_prepare do
      Devise::SessionsController.layout "admin"
      Devise::RegistrationsController.layout "admin"
      Devise::ConfirmationsController.layout "admin"
      Devise::UnlocksController.layout "admin"
      Devise::PasswordsController.layout "admin"
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

  end
end
