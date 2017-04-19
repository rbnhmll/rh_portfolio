class EmailsController < ApplicationController

	def send(c)
		content = params[:email_content]
		@name = content["name"]
		@email = content["email"]
		@subject = content["subject"]
		@message = content["message"]

		ContactMailer.contact_email(@name, @email, @subject, @message).deliver_now
		redirect_to "/"
	end

end
