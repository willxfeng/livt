Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile +=
  %w( body_map random_background calendar )
