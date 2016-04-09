# Load the Rails application.
require File.expand_path('../application', __FILE__)

APP_CONFIG = YAML.load_file("#{Rails.root}/config/meta_config.yml")
# Initialize the Rails application.
Rails.application.initialize!
