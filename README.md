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
        Cross-site request forgery, also known as one-click attack or session riding and abbreviated as CSRF (sometimes pronounced sea-surf) or XSRF, is a type of malicious exploit of a website where unauthorized commands are transmitted from a user that the web application trusts
        Rails by default automatically protects you from cross-site request forgery and it requires you to verify that the form was actually submitted from a page you generated.

* How do you generate the token in Rails?

        Rails gives you a method called form_authenticity_token to do so, and we’ll cover it in the project.

* Why is the name attribute of a form input element so important?

      One important thing to note is the name attribute that you can give to an input tag. In Rails, that’s very important. The name attribute tells Rails what it should call the stuff you entered in that input field when it creates the params hash. For instance,


          ...
          <input type="text" name="description">
          ...

* How can you nest attributes under a single hash in params?

        Will result in your params hash containing a key called description that you can access as normal, e.g. params[:description], inside your controller. That’s also why some inputs like radio buttons (where type="radio") use the name attribute to know which radio buttons should be grouped together such that clicking one of them will unclick the others. The name attribute is surprisingly important!
* Why is this useful?

        This can be useful because, as we saw with controllers, it lets you do a one-line #create (once you’ve whitelisted the parameters with #require and #permit).
        
* What do you have to add/modify in your controller to handle nested params?

        you have to whitelist the params now in your controller using require and permit because they are a hash instead of just a flat string.
* What special tags does Rails’ #form_tag helper give you?

        the form_tag helper, which takes a block representing all the inputs to the form. It takes care of the CSRF security token
* What is the difference between #form_tag and #form_for helpers?

        Rails gives you a shortcut in the form of the slightly more abstracted form_for method. It’s a whole lot like form_tag but does a bit more work for you.
        Just pass form_for a model object, and it will make the form submit to the URL for that object
* How do you access errors on a failed-to-save model object?

        You can see those errors by accessing your_object_name.errors

        Those errors have a couple of handy helpers you can use to display them nicely in the browser – #count and #full_messages. See the code below:


                        <% if @post.errors.any? %>
                        <div id="error_explanation">
                        <h2><%= pluralize(@post.errors.count, "error") %> prohibited this post from being saved:</h2>

                        <ul>
                        <% @post.errors.full_messages.each do |msg| %>
                                <li><%= msg %></li>
                        <% end %>
                        </ul>
                        </div>
                        <% end %>

* Which form helper automatically adds markup around errors?

        Rails form helpers handle errors automatically
* How do you access your Update or Delete actions with a form?

        Rails gives you a way around that by sticking a hidden field named “_method” into your form. It tells Rails that you actually want to do either a PATCH (aka PUT) or DELETE request (whichever you specified), and might look like <input name="_method" type="hidden" value="patch">.

You get Rails to add this to your form by passing an option to form_for or form_tag called :method, e.g.:

                         form_tag(search_path, method: "patch")
