class UserMailer < Devise::Mailer

  default from: "epidaure.contact@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'https://epidaure.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def reset_password_instructions(record, token, opts={})
    super
  end
  
end
