require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Enstyleme
  class Application < Rails::Application
    # Add the fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    config.serve_static_assets = true
    config.assets.initialize_on_precompile = false

    config.action_mailer.preview_path = "#{Rails.root}/app/mailers/previews"

  end
end
