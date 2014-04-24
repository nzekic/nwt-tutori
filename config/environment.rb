# Load the Rails application.
require File.expand_path('../application', __FILE__)

 config.action_mailer.delivery_method = :smtp
 config.action_mailer.raise_delivery_errors = true
 config.action_mailer.smtp_settings = {
 address:              'smtp.gmail.com',
 port:                 587,
 domain:               'oglasnikzatutore.com',
 user_name:            'oglasnikzatutore@gmail.com',
 password:             'oglasnik1234',
 authentication:       'plain',
 enable_starttls_auto: true  }
# Initialize the Rails application.
OglasnikZaTutore::Application.initialize!
