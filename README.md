# Ruby-On-Rails-Module-Contact

Project Contact.<br/>
Simple Contact Form With Validation and I18n.<br/>
Send Email of "Thank You For Contact" with specific idiom and Manual Send Email of Answer.<br/>

Heroku (Live Demo):<br>
https://module-contact.herokuapp.com/

I18n available's languages: |en|de|es|it|pt|fr|<br/>
Send Email with SMTP (Gmail's Account).<br/>

** IMPORTANT CONFIG YOUR EMAIL **<br/>
development.rb<br/>
production.rb<br/>
test.rb<br/>
In Gmail Account to enable 'Less secure APP' in 'Google's Account' => Security<br>
If you don't config your Gmail's Account don't work send the emails<br>
After access: https://accounts.google.com/b/0/DisplayUnlockCaptcha and enabled.

Command for you use:<br/>
$ sudo service postgresql start <br/>
$ cd Module-Contact<br/>
$ bundle update<br/>
$ bundle install<br/>
$ rake db:drop db:create db:migrate db:seed<br/>
$ rails s or rails s -p $PORT -b $IP<br/>

Access your browser: http://0.0.0.0:8080 or http://localhost:8080<br/>
For test send email preview: http://localhost:8080/rails/mailers/contact<br>

Admin's Area:<br>
Login: demo@demo.com<br>
Password: demo123<br>

Ruby Version:<br/>
Ruby 2.4.5p335 (2018-10-18 revision 65137) [x86_64-linux]<br/>

Rails Version:<br/>
Rails 5.2.3<br/>

PostGres Version :<br/>
(PostgreSQL) 9.3.18<br/>

Gem's used:<br/>
I18n<br/>
Thin<br/>
Devise (Login)<br/>
Globalize<br/>
Faker<br/>
Rspec<br/>

sudo service postgresql start<br>
rails s -p $PORT -b $IP <br>
heroku restart; heroku pg:reset DATABASE --confirm APP-NAME; heroku run rake db:migrate; heroku run rake db:seed; <br>
