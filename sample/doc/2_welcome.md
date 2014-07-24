# 파우더
	$ cd ~/.pow
	$ ln -s /path/to/myapp sample
	$ open http://sample.dev/

# 잘오셨어요 컨트롤러
	$ rails g controller welcome

# 라우팅
	$ vi config/routes.rb
		root 'welcome#index'

	$ vi app/controllers/welcome_controller.rb
		def index
		end

	$ vi app/views/welcome/index.html.erb
		hello

	$ rake routes
		Prefix Verb URI Pattern Controller#Action
  		root GET  /           welcome#index
	

# bootstrap, vuejs

	$ vi Gemfile
		#
		gem 'bootstrap-sass'
		gem 'vuejs-rails'
	$ bundle

	$ vi app/assets/javascripts/application.js
		//= require bootstrap
		//= require vue

		//= require_tree .

	$ powder restart


# vuejs

	$ vi app/assets/javascripts/welcome.js.coffee
		
		$ ->
		
		  demoVM = new Vue
		    el: '#demo'
		    data:
		      message: 'Hello Vue.js!'

	$ vi app/views/welcome/index.html.erb
		<div id="demo">
		    <p>{{message}}</p>
		    <input v-model="message">
		</div>


