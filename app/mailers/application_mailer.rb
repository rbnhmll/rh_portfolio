class ApplicationMailer < ActionMailer::Base
	default from: "postmaster@mg.robinhamill.com"
  layout 'mailer'
end
