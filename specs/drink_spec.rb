require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink_1 = Drink.new("Beer", 5)
  end

  def test_has_name
    result = @drink_1.name
    assert_equal("Beer", result)
  end


  def test_has_price
    result = @drink_1.price
    assert_equal(5, result)
  end



















end
