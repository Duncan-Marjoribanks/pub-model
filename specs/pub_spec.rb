require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test

def setup
  @drink_1 = Drink.new("Vodka", 3)
  @drink_2 = Drink.new("Rum", 4)
  @pub_1 = Pub.new("The Sooky Dook", 100, [@drink_1, @drink_2])
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
  result = @pub_1.add_drink_to_stock(@drink_2)
  assert_equal(3, result.count
end

def test_remove_drink
  result = @pub_1.remove_drink_from_stock(@drink_1)
  assert_equal(1, @pub_1.stock.length)
  assert_equal("Vodka", result.name)
end

def test_add_money_to_the_till
  result = @pub_1.add_to_till(10)
  assert_equal(110, result)
end

def test_remove_money_from_till
  result = @pub_1.remove_from_till(10)
  assert_equal(90, result)
end
# def test_check_pub_details
#   @pub_1.check_pub_details(@pub_1)
# end


















end
