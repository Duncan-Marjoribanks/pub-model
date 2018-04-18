class Customer

  attr_reader(:name, :age)
  attr_accessor(:wallet, :drunk_level)

  def initialize(name, wallet, age, drunk_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = drunk_level
  end

  def remove_money_from_wallet(amount)
    return @wallet -= (amount)
  end

  def add_money_to_wallet(amount)
    return @wallet += (amount)
  end

def customer_gets_drunk(customer, drink)
  customer.drunk_level += drink.abv
end

  def buy_drink_from_pub(customer, pub, drink)
    if customer.age >= 18
      pub.remove_drink_from_stock(drink)
      pub.add_to_till(drink.price)
      customer.remove_money_from_wallet(drink.price)
      customer.customer_gets_drunk(customer, drink)
    else
      return nil
    end
  end





end
