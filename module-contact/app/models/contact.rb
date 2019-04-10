class Contact < ApplicationRecord
  belongs_to :subject_contact
  
  validates_presence_of :name,:email,:subject,:message
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_length_of :message, :minimum => 2,:maximum => 500, :allow_blank => false
  
end
