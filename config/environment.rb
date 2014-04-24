# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
 address:              'smtp.gmail.com',
 port:                 587,
 domain:               'oglasnikzatutore.com',
 user_name:            'oglasnikzatutore@gmail.com',
 password:             'oglasnik1234',
 authentication:       'plain',
 enable_starttls_auto: true  }
# Initialize the Rails application.
OglasnikZaTutore::Application.initialize!
