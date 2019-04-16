# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
    
  def automatic_answer_preview
    ContactMailer.automatic_answer(Contact.first)
  end

end
