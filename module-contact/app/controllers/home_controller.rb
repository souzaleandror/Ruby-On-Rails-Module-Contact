class HomeController < ApplicationController
  
  def index
    @subject_contacts = SubjectContact.select(:id, :name).order(name: :desc).where(:inactive => false).includes(:translations).with_locales(I18n.available_locales)
    @contact = Contact.new
  end
  
  def create_contact
    @contact = Contact.new(contact_params)   
    
    respond_to do |format|
      if @contact.save
        ContactMailer.automatic_answer(@contact).deliver
        @contact.update(automatic_answer: true )
        # if you have model Newsletter
        # if (@contact.newsletter == true) && (!Newsletter.find_by_email(@contact.email)) then
        #   Newsletter.create(name: @contact.name, email: @contact.email, inactive: false).save!
        # end
        
        format.html { redirect_to root_path, notice: "#{t('.thank_you_for_message')} \\n #{t('.we_will_respond_as_soon_as_possible')}" }
      else
        format.html { redirect_to root_path, notice: "#{t('.thank_you_for_message')} \\n #{t('.we_will_respond_as_soon_as_possible')}" }
      end
    end
  end
  
  private 

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :subject, :subject_contact_id, :message, :accepted, :newsletter)
  end
  
end
