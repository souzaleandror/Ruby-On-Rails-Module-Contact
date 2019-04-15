class WelcomeController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_contact, only: [:answer_contact]
  
  def index
    @contacts = Contact.all
    @subject_contacts = SubjectContact.all
  end
  
  def answer_contact
    if @contact.blank? then
      flash[:error] = "Not Found."
      redirect_to contacts_url
    end
  end
  
  def send_answer_contact
    
  end
  
  private
  
  def set_contact
    @contact = Contact.find_by_id(params[:id])
  end
  
end