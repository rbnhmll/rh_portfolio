class ApplicationMailer < ActionMailer::Base
	default from: "postmaster@mg.robinhamill.ca"
  layout 'mailer'
end
