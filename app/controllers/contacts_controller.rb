class ContactsController < ApplicationController
  
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.contact_mail(@contact).deliver_now
        render json: @contact, status: :created, location: (@contact)
      else
        render json: @contact.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :content)
    end
end