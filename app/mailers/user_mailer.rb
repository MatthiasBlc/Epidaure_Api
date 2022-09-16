class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = 'https://epidaure-preprod.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

end
