# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

# Settings for email ..
Depot::Application.configure do
	config.action_mailer.delivery_method :smtp
	
	config.action_mailer.smtp_settings = {
		:address		=> "smtp.gmail.com",
		:port			=> 587,
		:domain			=> "domain.of.sender.com",
		:authentication	=> "plain",
		:user_name		=> "gowillingham@gmail.com",
		:password		=> "S+3ph3nW",
		:enable_starttls => true
	}
end
