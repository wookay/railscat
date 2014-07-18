require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  fixtures :menus, :cafes

   test "메뉴" do
    twosome_americano = menus(:twosome_americano)
    assert "투섬" == twosome_americano.cafe.name
  end

end
