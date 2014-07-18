require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  fixtures :orders, :customers, :menus

  test "주문" do
    hyun_americano = orders(:hyun_americano)
    assert "현규" == hyun_americano.customer.name
    assert "아메리카노" == hyun_americano.menu.name
  end

end
