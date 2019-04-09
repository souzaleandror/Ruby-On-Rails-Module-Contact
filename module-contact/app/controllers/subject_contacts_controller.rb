class SubjectContactsController < ApplicationController
  before_action :set_subject_contact, only: [:show, :edit, :update, :destroy]

  # GET /subject_contacts
  # GET /subject_contacts.json
  def index
    @subject_contacts = SubjectContact.all
  end

  # GET /subject_contacts/1
  # GET /subject_contacts/1.json
  def show
  end

  # GET /subject_contacts/new
  def new
    @subject_contact = SubjectContact.new
  end

  # GET /subject_contacts/1/edit
  def edit
  end

  # POST /subject_contacts
  # POST /subject_contacts.json
  def create
    @subject_contact = SubjectContact.new(subject_contact_params)

    respond_to do |format|
      if @subject_contact.save
        format.html { redirect_to @subject_contact, notice: 'Subject contact was successfully created.' }
        format.json { render :show, status: :created, location: @subject_contact }
      else
        format.html { render :new }
        format.json { render json: @subject_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_contacts/1
  # PATCH/PUT /subject_contacts/1.json
  def update
    respond_to do |format|
      if @subject_contact.update(subject_contact_params)
        format.html { redirect_to @subject_contact, notice: 'Subject contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_contact }
      else
        format.html { render :edit }
        format.json { render json: @subject_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_contacts/1
  # DELETE /subject_contacts/1.json
  def destroy
    @subject_contact.destroy
    respond_to do |format|
      format.html { redirect_to subject_contacts_url, notice: 'Subject contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_contact
      @subject_contact = SubjectContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_contact_params
      params.require(:subject_contact).permit(:name, :variable_name, :inactive)
    end
end
