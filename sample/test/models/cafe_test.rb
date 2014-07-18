require 'test_helper'

class CafeTest < ActiveSupport::TestCase
  fixtures :cafes, :menus

  test "카페" do
    twosome = cafes(:twosome)
    assert 1 == twosome.menus.count
  end

end
