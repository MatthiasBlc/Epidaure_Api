class ContactMailer < ApplicationMailer
  default from: "epidaure.contact@gmail.com"

  def contact_mail(contact)
      @contact = contact
      @url = 'https://epidaure-preprod.herokuapp.com/'
      mail(to: 'epidaure.contact@yopmail.com', subject: 'Prise de contact via le site')
    end
end