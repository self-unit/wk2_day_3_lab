class Pub

attr_reader :name
attr_accessor :till, :drinks

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks || []
end

def drink_sale(age, drink, drunkenness)
  if age > 18 && drunkenness < 50
    @drinks.delete(drink)
    @till += drink.price
    return true
  else
    return false
    # return "You're only #{age}, get tae eff!"
  end
end

end
