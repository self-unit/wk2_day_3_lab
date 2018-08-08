class Customer

  attr_reader :name
  attr_accessor :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0


  end

  def buy_drink(pub, drink)
    # pub.drink_sale(@age, drink)
    if pub.drink_sale(@age, drink) == true
    @wallet -= drink.price
    end

  end


end
