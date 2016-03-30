# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


config.action_mailer.default_url_options = { :host =&gt; 'austinbagley.com'}

config.action_mailer.delivery_method = :smtp

config.action_mailer.smtp_settings = {
address: "smtp.sendgrid.net",
port: 25,
domain: "austinbagley.com", 
authentication: "plain",
enable_starttls_auto: true,
user_name: ENV["SENDGRID_USERNAME"],
password: ENV["SENDGRID_PASSWORD"]
}
