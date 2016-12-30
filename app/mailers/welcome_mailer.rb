class WelcomeMailer < ApplicationMailer
    default from: "689860nb@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Area62')
  end
end
