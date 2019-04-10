# Ruby-On-Rails-Module-Contact

Project Contact.
Simple Contact Form With Validation and I18n.
Send Email of "Thank You For Contact" with specific idiom and Manual Send Email of Answer.

I18n available's languages: |en|de|es|it|pt|fr|
Send Email with SMTP (Gmail).

** IMPORTANT CONFIG YOUR EMAIL **
development.rb
production.rb
test.rb

Command for you use:
$ sudo service postgresql start 
$ cd Module-Contact
$ bundle update
$ bundle install
$ rake db:drop db:create db:migrate db:seed
$ rails s or rails s -p $PORT -b $IP

Access your browser: http://0.0.0.0:8080 or http://localhost:8080

Ruby Version:
Ruby 2.4.5p335 (2018-10-18 revision 65137) [x86_64-linux]

Rails Version:
Rails 5.2.3

PostGres Version :
(PostgreSQL) 9.3.18

Gem's used:
I18n
Thin
Devise (Login)
Globalize
Faker
Rspec

sudo service postgresql start 
rails s -p $PORT -b $IP