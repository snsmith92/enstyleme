# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( fontawesome-all.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-select.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-tagsinput.min.js )
Rails.application.config.assets.precompile += %w( input-mask.min.js )
Rails.application.config.assets.precompile += %w( nouislider.min.js )
Rails.application.config.assets.precompile += %w( textarea-autosize.min.js )
Rails.application.config.assets.precompile += %w( theme.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
