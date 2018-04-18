class Pub

attr_reader(:pub_name)
attr_accessor(:till, :stock)


def initialize(pub_name, till, stock)
  @pub_name = pub_name
  @till = till
  @stock = stock
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




# def check_pub_details(pub)
#   p pub
# end







end
