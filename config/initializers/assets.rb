# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( bootstrap.js boostrap_and_overrides.css custom.css jquery-ui.js jquery-ui.datepicker.js turbolinks.js wice_grid.css wice_grid.js wice_grid_init.js wice_grid_processor.js wice_grid_saved_queries_init.js )
