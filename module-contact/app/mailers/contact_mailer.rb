class ContactMailer < ApplicationMailer
	default from: "Module Contact - No Reply <no-replay@module-contact.com>"
	default template_path: -> (mailer) { "mailers/#{mailer.class.name.underscore}" }
  
  def automatic_answer(contact)
    @contact = contact
    mail(to: @contact.email, from: ["Module Contact - No Reply <no-replay@module-contact.com>"], cc: "lrs.estudos@gmail.com", subject: t('.thank_you_for_contact'))
  end
  
  def manual_answer(contact, answer, admin)
    @contact = contact
    @answer = answer
    @admin = admin
    mail(to: @contact.email, from: ["Module Contact <#{@admin.email}>"], cc: "lrs.estudos@gmail.com", subject: t('.thank_you_for_contact'))
  end
    
end
