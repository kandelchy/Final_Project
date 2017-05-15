class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@gmail.com"
  default :to => "saadshakir12345@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "https://ebookstore-mustbecoder.c9users.io #{message.subject}")
  end

end