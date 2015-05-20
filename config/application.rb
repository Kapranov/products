require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Products
  class Application < Rails::Application
    require Rails.root.join("lib/custom_public_exceptions")
    config.exceptions_app = CustomPublicExceptions.new(Rails.public_path)
    config.active_record.timestamped_migrations = false
    config.active_record.raise_in_transactional_callbacks = true
  end
end
