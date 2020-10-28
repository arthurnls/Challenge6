# README

<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">This is a challenge in three parts. In this challenge we will be building a simple&nbsp;<a href="http://en.wikipedia.org/wiki/Customer_relationship_management" target="_blank" rel="noopener noreferrer">CRM</a>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">When working on this challenge you should be actively researching Rails using the following resources:</span></p>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><a href="http://api.rubyonrails.org" target="_self">api.rubyonrails.org</a></span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><a href="http://guides.rubyonrails.org" target="_self">http://guides.rubyonrails.org</a>&nbsp;(Specifically the sections on Active Record Queries, Routing, Partials, and Migrations.)</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Our Course Notes: <a href="/d2l/common/dialogs/quickLink/quickLink.d2l?ou=206575&amp;type=content&amp;rcode=RRC-931380" target="_self">Rails Overview Notes</a> and <a href="/d2l/common/dialogs/quickLink/quickLink.d2l?ou=206575&amp;type=content&amp;rcode=RRC-931377" target="_self">Git Overview Note</a>s<br></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>SETUP RAILS</strong></span></p>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Generate a Customer model:</span>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Full name</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Phone number</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Email Address</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Image (Use either a string column or active storage for this.)<br></span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Notes (of type text, whereas all other above fields are strings)</span></li>
</ul>
</li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Migrate the customers table to the db.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Add Active Admin to the project and configure it to be able to CRUD customers.&nbsp;(See Kyle's Active Admin video for details.)</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Use the Admin CRUD to add at least 5 customers to your database. Ensure that some customers are missing email addresses.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If your image property is a string, save the image filename only (not the path) and add the image file to the app/assets/images&nbsp;folder. <br></span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Add a few validations to the customer model. For example, you should likely be ensuring the presence of at least the full name.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Add and commit the initial Rails project repo and push to an associated github repo.</span><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp;</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>PART 1 - PREPARE A PARTIAL FOR CUSTOMERS</strong></span></p>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Create a partial for displaying customer info:&nbsp;app/views/customers/_customer.html.erb</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">See the image at the end of this file for an example look/feel for this partial.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Be sure your partial uses the image_tag helper to display the customer's image_url.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">You may wish to develop this partial as you implement the views in part 2.</span><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"></span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Git add/commit and push to your remote github repository.</span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp;</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>PART 2 - A NEW CONTROLLER</strong></span></p>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Generate (using "rails g") a new controller called <em>customers</em>.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Create an index action/view for this controller.</span>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">This action should use the Customer model to find all customers.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">The view should display all the customers found by the action.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Each customer should be displayed using the partial created in the previous section.</span></li>
</ul>
</li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Create a alphabetized action/view for this controller.&nbsp;</span>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">This action should use the Customer model to find all customers, ordered by name.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">The view should display all the customers found by the action.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Each customer should be displayed using the partial created in the previous section.</span></li>
</ul>
</li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Create a missing_email action/view for this controller.</span>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">This action should use the Customer model to find all customers that are missing email addresses.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">The view should loop through all the customers found by the action (again using the partial for display).</span></li>
</ul>
</li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Add three routes to your routes.rb file to make these new finder actions accessible via URLs.</span>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Your URL route for the finder index action should be '/'</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Your URL route for the finder missing_email action should be '/customers/missing_email'</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Your URL route for the alphabetized action should be '/customers/alphabetized'</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">You can either manually create these routes, or follow <a href="http://guides.rubyonrails.org/routing.html#adding-more-restful-actions" target="_blank" rel="noopener noreferrer">these instructions to augment Rails RESTful resource routes</a>.</span></li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">The index view should link to the missing email view&nbsp;and alphabetized view, and vice versa.</span></li>
</ul>
</li>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Styling: Ensure that you have added CSS to the app/assets/stylesheets/customer.scss file such that your finder views look similar to the image below.</span></li>
</ul>
<ul>
<li><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Git add/commit and push to your remote github repository.<br>&nbsp;<br></span></li>
<li><span style="font-family: arial, helvetica, sans-serif;"><strong>Submit to the challenge dropbox with your github repo URL in the submission comment.</strong></span></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style="font-size: 12pt;"><strong><span style="font-family: arial, helvetica, sans-serif;">Example&nbsp;Styling for Customer Partial</span></strong></span></p>
<p><img src="https://learn.rrc.ca/content/enforced/126815-160734/crm.png?_&d2lSessionVal=OkpSWpJMxNdq9InT62bL60hlO&ou=206575" alt="crm" title="crm" style="max-width: 100%;" data-d2l-editor-default-img-style="true"></p>



## Testing Stuff

Run Commands:
- rails g model Customer name:string phone:string email:string image:string notes:text
- rails db:migrate
- rails g scaffold_controller Customer

Github Link: https://github.com/arthurnls/Challenge6

stopped at 11:21
