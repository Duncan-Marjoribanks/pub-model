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






















end
