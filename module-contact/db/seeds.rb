# ruby encoding: utf-8

# require 'faker'
require 'time'

puts 'START DESTROY ALL'
SubjectContact.destroy_all
Contact.destroy_all
puts 'END DESTROY ALL'

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

puts 'END STADANTARD ENGLISH'

puts 'START STADANTARD PT'
I18n.locale = :pt
TSUBCON1.update_attributes(name: 'Sugestão')
TSUBCON2.update_attributes(name: 'Reclamacao')
TSUBCON3.update_attributes(name: 'Dúvidas')
TSUBCON4.update_attributes(name: 'Elogio')
TSUBCON5.update_attributes(name: 'Erros')
TSUBCON6.update_attributes(name: 'Outras')
puts 'END STADANTARD PT'

puts 'START STADANTARD IT'
I18n.locale = :it
TSUBCON1.update_attributes(name: 'Suggerimento')
TSUBCON2.update_attributes(name: 'Denuncia')
TSUBCON3.update_attributes(name: 'Dubbi')
TSUBCON4.update_attributes(name: 'Complimento')
TSUBCON5.update_attributes(name: 'Errori')
TSUBCON6.update_attributes(name: 'Altri')
puts 'END STADANTARD IT'

puts 'START STADANTARD de'
I18n.locale = :de
TSUBCON1.update_attributes(name: 'Vorschlag')
TSUBCON2.update_attributes(name: 'Beschwerde')
TSUBCON3.update_attributes(name: 'Zweifel')
TSUBCON4.update_attributes(name: 'Kompliment')
TSUBCON5.update_attributes(name: 'Fehler')
TSUBCON6.update_attributes(name: 'Andere')
puts 'END STADANTARD de'

puts 'START STADANTARD fr'
I18n.locale = :fr
TSUBCON1.update_attributes(name: 'Suggestion')
TSUBCON2.update_attributes(name: 'Plainte')
TSUBCON3.update_attributes(name: 'Les doutes')
TSUBCON4.update_attributes(name: 'Compliment')
TSUBCON5.update_attributes(name: 'les erreurs')
TSUBCON6.update_attributes(name: 'Autres')
puts 'END STADANTARD fr'

puts 'START STADANTARD es'
I18n.locale = :es

TSUBCON1.update_attributes(name: 'Sugerencia')
TSUBCON2.update_attributes(name: 'Queja')
TSUBCON3.update_attributes(name: 'Dudas')
TSUBCON4.update_attributes(name: 'Cumplido')
TSUBCON5.update_attributes(name: 'Los errores')
TSUBCON6.update_attributes(name: 'Otros')
puts 'END STADANTARD es'