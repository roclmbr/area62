class WelcomeMailer < ApplicationMailer
    default from: "no-reply@689860nb.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Area62')
  end
end
