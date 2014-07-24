	$ rails g scaffold_controller customer name:string money:integer membershipcard:string
      create  app/controllers/customers_controller.rb
      invoke  erb
      create    app/views/customers
      create    app/views/customers/index.html.erb
      create    app/views/customers/edit.html.erb
      create    app/views/customers/show.html.erb
      create    app/views/customers/new.html.erb
      create    app/views/customers/_form.html.erb
      invoke  test_unit
      create    test/controllers/customers_controller_test.rb
      invoke  helper
      areate    app/helpers/customers_helper.rb
      invoke    test_unit
      create      test/helpers/customers_helper_test.rb
      invoke  jbuilder
      create    app/views/customers/index.json.jbuilder
      create    app/views/customers/show.json.jbuilder

	$ rails g scaffold_controller cafe name:string
