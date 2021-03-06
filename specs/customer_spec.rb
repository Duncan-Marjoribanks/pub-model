require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")
require_relative("../food")

class CustomerTest < MiniTest::Test


  def setup
    @drink_1 = Drink.new("Beer", 5, 3)
    @drink_2 = Drink.new("Vodka", 3, 6)
    @drink_3 = Drink.new("Rum", 4, 6)
    @food_1 = Food.new("Nachos", 10, 5)
    @pub_1 = Pub.new("The Sooky Dook", 100, [@drink_1, @drink_2])
    @customer_1 = Customer.new("Marmaduke", 14, 39, 7)
  end


  def test_has_name
    result = @customer_1.name
    assert_equal("Marmaduke", result)
  end

  def test_has_wallet
    result = @customer_1.wallet
    assert_equal(14, result)
  end

  def test_can_remove_money_from_wallet
    result = @customer_1.remove_money_from_wallet(5)
    assert_equal(9, result)
  end

  def test_can_add_money_to_wallet
    result = @customer_1.add_money_to_wallet(3)
    assert_equal(17, result)
  end

  def test_buy_drink_from_pub
    @customer_1.buy_drink_from_pub(@customer_1, @pub_1, @drink_2)
    assert_equal(103, @pub_1.till)
    assert_equal(11, @customer_1.wallet)
  end

  def test_check_age
    assert_equal(39, @customer_1.age)
  end

  def test_customer_drunk_level
    @customer_1.buy_drink_from_pub(@customer_1, @pub_1, @drink_1)
    @customer_1.buy_drink_from_pub(@customer_1, @pub_1, @drink_2)
    assert_equal(16, @customer_1.drunk_level)
    assert_equal(6, @customer_1.wallet)
  end

  def test_can_buy_food
    @customer_1.buy_food_from_pub(@customer_1, @pub_1, @food_1)
    assert_equal(110, @pub_1.till)
    assert_equal(4, @customer_1.wallet)
    assert_equal(2, @customer_1.drunk_level)
  end

end
