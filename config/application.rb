require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeviseApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_mailer.smtp_settings = {
     :address => "smtp.gmail.com",
     :domain => "mail.google.com",
     :port => 587,
     :user_name => "abhigeek8@gmail.com",
     :password => "gom98765",
     :authentication => "login",
     :enable_starttls_auto => true
}

  end
end
