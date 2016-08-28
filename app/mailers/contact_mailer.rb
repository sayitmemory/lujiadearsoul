class ContactMailer < ApplicationMailer
  # default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "lujia.zhang19901223@gmail.com"

  def new_message(msg)
    @msg = msg
    # mail subject: "Message from #{message.name}"
    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end

end
