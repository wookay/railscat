
	$ rails new sample
	
	$ rails g model Customer
	$ rails g model Cafe
	$ rails g model Menu
	$ rails g model Order


	Customer
	  id
	  name
	  money
	  membershipcard
	
	Cafe
	  id
	  name
	  
	Menu
	  id
	  name
	  price
	  cafe_id
	
	Order
	  id
	  customer_id
	  menu_id



	$ rake db:migrate
	$ rake db:migrate RAILS_ENV=test
	
	$ rake test test/models/customer_test.rb
	$ rake test test/models/cafe_test.rb
	$ rake test test/models/menu_test.rb
	$ rake test test/models/order_test.rb
	$ rake test 