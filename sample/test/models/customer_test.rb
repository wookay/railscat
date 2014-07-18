require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  fixtures :customers, :orders

  test "현규의 주문" do
    hyun = customers(:hyun)
    assert 1 == hyun.orders.count
  end

end
