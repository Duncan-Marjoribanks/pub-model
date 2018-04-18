require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")

class PubTest < MiniTest::Test

def setup
  @pub_1 = Pub.new("The Sooky Dook", 100)
end

def test_has_name
result = @pub_1.pub_name
assert_equal("The Sooky Dook", result)
end

def test_has_till
  result = @pub_1.till
  assert_equal(100, result)
end



















end
