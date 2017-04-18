class ContactMailer < ApplicationMailer
	default to: "hi@robinhamill.com"
 
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: @email, subject: 'New Contact Request from robinhamill.ca')
  end
end
