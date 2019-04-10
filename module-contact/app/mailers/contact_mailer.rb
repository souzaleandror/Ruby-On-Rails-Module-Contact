class ContactMailer < ApplicationMailer
	default from: "no-replay@module-contact.com"
	default template_path: -> (mailer) { "mailers/#{mailer.class.name.underscore}" }
  
  def automatic_answer(contact)
    @contact = contact

    mail(to: @contact.email, subject: t('.thank_you_for_contact'))
  end
    
end
