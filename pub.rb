class Pub

attr_reader(:pub_name)
attr_accessor(:till, :stock, :food_stock)


def initialize(pub_name, till, stock, food_stock)
  @pub_name = pub_name
  @till = till
  @stock = stock
  @food_stock = food_stock
end

def add_drink_to_stock(drink)
  @stock.push(drink)
end


def remove_drink_from_stock(drink)
  @stock.delete(drink)
end

def add_to_till(amount)
  return @till += (amount)
end

def remove_from_till(amount)
  return @till -= (amount)
end


def add_food_to_food_stock(food)
  @food_stock.push(food)
end


def remove_food_from_food_stock(food)
  @food_stock.delete(food)
end




end
