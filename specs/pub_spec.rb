require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test

def setup
  @drink_1 = Drink.new("Vodka", 3)
  @drink_2 = Drink.new("Rum", 4)
  @pub_1 = Pub.new("The Sooky Dook", 100, [@drink_1])
end

def test_has_name
result = @pub_1.pub_name
assert_equal("The Sooky Dook", result)
end

def test_has_till
  result = @pub_1.till
  assert_equal(100, result)
end

def test_can_add_drink
  result = @pub_1.add_drink_to_stock(@drink_1)
  assert_equal(2, result.count)
end


# def test_has_drinks
#   result = @pub_1.stock
#   assert_equal()
#
#   end

















end
