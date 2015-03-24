class UserMailer < ApplicationMailer
  default from: "me@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://www.google.com'
    mail(to: @user.email, subject: 'test welcome email')
  end

  def send_notification(user)
    @user = user
    @url = 'http://www.google.com'
    mail(to: @user.email, subject: 'a user has answered your question')
  end
end
