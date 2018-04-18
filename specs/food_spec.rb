require("minitest/autorun")
require("minitest/rg")
require_relative("../food")

class FoodTest < MiniTest::Test

  def setup
    @food_1 = Food.new("Crisps", 2, 1)
  end

  def test_has_name
    result = @food_1.name
    assert_equal("Crisps", result)
  end


  def test_has_price
    result = @food_1.price
    assert_equal(2, result)
  end

  def test_has_rejuvination_level
    result = @food_1.rejuvination_level
    assert_equal(1, result)
  end

end
