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
    @contact = answer_params
    @answer = @contact[:answer]
    @subject_answer = @contact[:subject_answer]
    @contact = Contact.find_by_id(@contact[:id])
    
    if @contact.blank? then
      flash[:error] = "Not Found."
      redirect_to contacts_url
    end
    
    puts @contact
    
    if (@contact.email.present?) && (@answer.present?) then
      
      @contact.update_attribute(:manual_answer, true)
     respond_to do |format| 
      if @contact.save
        ContactMailer.manual_answer(@contact, @answer, current_admin).deliver
        format.html { redirect_to @contact, notice: 'Your Message Send Was Successfully.' }
        format.json { render :show, status: :created, location: @contact }
      else
        flash[:error] = "Your Message Not Send Was Successfully. Try again."
        redirect_to contacts_url
      end
    end
      
    end
    
  end
  
  private
  
  def set_contact
    @contact = Contact.find_by_id(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def answer_params
    params.require(:contact).permit(:id, :subject_answer, :answer)
  end
  
end