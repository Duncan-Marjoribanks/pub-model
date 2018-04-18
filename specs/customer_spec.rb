require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")

class CustomerTest < MiniTest::Test


def setup
  @customer_1 = Customer.new("Marmaduke", 14)
end


def test_has_name
  result = @customer_1.name
  assert_equal("Marmaduke", result)
end

def test_has_wallet
  result = @customer_1.wallet
  assert_equal(14, result)

  end











end
