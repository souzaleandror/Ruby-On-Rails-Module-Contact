json.extract! contact, :id, :name, :email, :phone, :subject, :subject_contact_id, :message, :accepted, :newsletter, :automatic_answer, :manual_answer, :created_at, :updated_at
json.url contact_url(contact, format: :json)
