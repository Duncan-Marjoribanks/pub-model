class Customer

attr_reader(:name, :wallet)

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def remove_money_from_wallet(amount)
  return @wallet -= (amount)
end

def add_money_to_wallet(amount)
  return @wallet += (amount)
end













end
