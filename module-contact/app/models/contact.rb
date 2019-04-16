class Contact < ApplicationRecord
    
  validates_presence_of :name, :email, :message
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_length_of :message, :minimum => 2,:maximum => 500, :allow_blank => false
    
  belongs_to :subject_contact, optional: true
end
