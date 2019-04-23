# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
    
  def automatic_answer_preview
    ContactMailer.automatic_answer(Contact.first)
  end
  
  def manual_answer(contact, answer, subject_answer, admin)
    ContactMailer.manual_answer(Contact.first, 'Body Test', 'Subject Test', Admin.first)
  end

end
