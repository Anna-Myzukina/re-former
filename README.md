# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
#### Learning Outcomes
##### Look through these now and then use them to test yourself after doing the assignment:

* How can you view what was submitted by a form?
If you want to see what your forms are submitting to your Rails app, look through the output that gets printed into your console when you run your $ rails server. Whenever you submit a very basic form for a user email signup, it should include lines that look something like:

        Started POST "/user" for 127.0.0.1 at 2013-11-21 19:10:47 -0800
        Processing by UsersController#create as HTML
        Parameters: {"utf8"=>"✓", "authenticity_token"=>"jJa87aK1OpXfjojryBk2Db6thv0K3bSZeYTuW8hF4Ns=", 
        "email"=>"foo@bar.com","commit"=>"Submit Form"}
     
* What is a CSRF Token and why is it necessary?
* How do you generate the token in Rails?
* Why is the name attribute of a form input element so important?
* How can you nest attributes under a single hash in params?
* Why is this useful?
* What do you have to add/modify in your controller to handle nested params?
* What special tags does Rails’ #form_tag helper give you?
* What is the difference between #form_tag and #form_for helpers?
* How do you access errors on a failed-to-save model object?
* Which form helper automatically adds markup around errors?
* How do you access your Update or Delete actions with a form?
