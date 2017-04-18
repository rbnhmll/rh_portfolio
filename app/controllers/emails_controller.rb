class EmailsController < ApplicationController

	def send(c)
		content = params[:email_content]
		@name = content["name"]
		@email = content["email"]
		@message = content["message"]

		ContactMailer.contact_email(@name, @email, @message).deliver_now
		redirect_to "/"
	end

end
