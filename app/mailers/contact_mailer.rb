class ContactMailer < ApplicationMailer
	default to: "hi@robinhamill.com"
 
  def contact_email(name, email, subject, message)
    @name = name
    @email = email
    @message = message
    @subject = subject.presence || 'Contact Form Submission'
    mail(from: @email, subject: @subject)
  end
end
