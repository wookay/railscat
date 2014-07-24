# 새 프로젝트 생성

	$ rails new sample
	$ cd sample


# 모델링
	Customer            Cafe         Menu           Order
	id                  id           id             id
	name                name         name           customer_id
	money                            price          menu_id    
	membershipcard                   cafe_id


# 고객 모델 
	$ rails g model Customer
      t.string :name
      t.integer :money
      t.string :membershipcard

# 불규칙 pluralize
    $ vi config/initializers/inflections.rb
	 ActiveSupport::Inflector.inflections(:en) do |inflect|
	   inflect.irregular 'cafe', 'cafes'
	 end

	$ rails g model Cafe
      t.string :name

# 메뉴 모델
	$ rails g model Menu
      t.string :name
      t.integer :price
      t.references :cafe

# 주문 모델 
	$ rails g model Order
      t.references :customer
      t.references :menu

# DB 마이그레이션
	$ rake db:migrate
	$ rake db:migrate RAILS_ENV=test

# 픽스쳐
	$ cat test/fixtures/customers.yml
	$ cat test/fixtures/cafes.yml
	$ cat test/fixtures/menus.yml
	$ cat test/fixtures/orders.yml

# 연관 관계
	$ vi app/models/customer.rb
		has_many :orders
	$ vi app/models/menu.rb
        belongs_to :cafe
	
# 테스트 실행
	$ rake test test/models/customer_test.rb
	$ rake test test/models/cafe_test.rb
	$ rake test test/models/menu_test.rb
	$ rake test test/models/order_test.rb
	$ rake test 
