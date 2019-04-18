# ruby encoding: utf-8

# require 'faker'
require 'time'

puts 'START DESTROY ALL'
Admin.destroy_all
SubjectContact.destroy_all
Contact.destroy_all
puts 'END DESTROY ALL'

puts 'CREATE ADMINS'
Admin.create(email: 'demo@demo.com', password: 'demo123')
Admin.create(email: 'hello@hello.com', password: 'hello123')
Admin.create(email: 'admin@admin.com', password: 'admin123')
puts 'END ADMINS'

puts 'START STADANTARD ENGLISH'
I18n.locale = :en

puts 'START Subject Contact'
TSUBCON1 = SubjectContact.create(name: 'Suggestion', variable_name: 'Suggestion', inactive: false)
TSUBCON2 = SubjectContact.create(name: 'Complaint', variable_name: 'Complaint', inactive: false)
TSUBCON3 = SubjectContact.create(name: 'Doubts', variable_name: 'Doubts', inactive: false)
TSUBCON4 = SubjectContact.create(name: 'Compliment', variable_name: 'Compliment', inactive: false)
TSUBCON5 = SubjectContact.create(name: 'Errors', variable_name: 'Errors', inactive: false)
TSUBCON6 = SubjectContact.create(name: 'Others', variable_name: 'Others', inactive: false)
puts 'END Subject Contact'

puts 'START Contact'
Contact.create(name: 'Emilio', email: 'emilio@gmail.com', phone: '(55) 11 91234-1234', message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', accepted: true, newsletter: true, automatic_answer: true, manual_answer: false)
Contact.create(name: 'jonh', email: 'jonh@gmail.com', phone: '(55) 11 91234-1234', message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', accepted: true, newsletter: false, automatic_answer: true, manual_answer: false)
Contact.create(name: 'maria', email: 'maria@gmail.com', phone: '(55) 11 91234-1234', message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', accepted: true, newsletter: true, automatic_answer: true, manual_answer: false)
puts 'END Contact'

puts 'END STADANTARD ENGLISH'

puts 'START STADANTARD PT'
I18n.locale = :pt
TSUBCON1.update_attributes(name: 'Sugestão', variable_name: 'Sugestão')
TSUBCON2.update_attributes(name: 'Reclamacao', variable_name: 'Reclamacao')
TSUBCON3.update_attributes(name: 'Dúvidas', variable_name: 'Dúvidas')
TSUBCON4.update_attributes(name: 'Elogio', variable_name: 'Elogio')
TSUBCON5.update_attributes(name: 'Erros', variable_name: 'Erros')
TSUBCON6.update_attributes(name: 'Outras', variable_name: 'Outras')
puts 'END STADANTARD PT'

puts 'START STADANTARD IT'
I18n.locale = :it
TSUBCON1.update_attributes(name: 'Suggerimento', variable_name: 'Suggerimento')
TSUBCON2.update_attributes(name: 'Denuncia', variable_name: 'Denuncia')
TSUBCON3.update_attributes(name: 'Dubbi', variable_name: 'Dubbi')
TSUBCON4.update_attributes(name: 'Complimento', variable_name: 'Complimento')
TSUBCON5.update_attributes(name: 'Errori', variable_name: 'Errori')
TSUBCON6.update_attributes(name: 'Altri', variable_name: 'Altri')
puts 'END STADANTARD IT'

puts 'START STADANTARD de'
I18n.locale = :de
TSUBCON1.update_attributes(name: 'Vorschlag', variable_name: 'Vorschlag')
TSUBCON2.update_attributes(name: 'Beschwerde', variable_name: 'Beschwerde')
TSUBCON3.update_attributes(name: 'Zweifel', variable_name: 'Zweifel')
TSUBCON4.update_attributes(name: 'Kompliment', variable_name: 'Kompliment')
TSUBCON5.update_attributes(name: 'Fehler', variable_name: 'Fehler')
TSUBCON6.update_attributes(name: 'Andere', variable_name: 'Andere')
puts 'END STADANTARD de'

puts 'START STADANTARD fr'
I18n.locale = :fr
TSUBCON1.update_attributes(name: 'Suggestion', variable_name: 'Suggestion')
TSUBCON2.update_attributes(name: 'Plainte', variable_name: 'Plainte')
TSUBCON3.update_attributes(name: 'Les doutes', variable_name: 'Les doutes')
TSUBCON4.update_attributes(name: 'Compliment', variable_name: 'Compliment')
TSUBCON5.update_attributes(name: 'les erreurs', variable_name: 'les erreurs')
TSUBCON6.update_attributes(name: 'Autres', variable_name: 'Autres')
puts 'END STADANTARD fr'

puts 'START STADANTARD es'
I18n.locale = :es

TSUBCON1.update_attributes(name: 'Sugerencia', variable_name: 'Sugerencia')
TSUBCON2.update_attributes(name: 'Queja', variable_name: 'Queja')
TSUBCON3.update_attributes(name: 'Dudas', variable_name: 'Dudas')
TSUBCON4.update_attributes(name: 'Cumplido', variable_name: 'Cumplido')
TSUBCON5.update_attributes(name: 'Los errores', variable_name: 'Los errores')
TSUBCON6.update_attributes(name: 'Otros', variable_name: 'Otros')
puts 'END STADANTARD es'