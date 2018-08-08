class Customer

  attr_reader :name, :drunkenness
  attr_accessor :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

  def buy_drink(pub, drink)
    if pub.drink_sale(@age, drink, @drunkenness) == true
    @wallet -= drink.price
    @drunkenness += drink.alc_level
    end
  end

  def buy_food(pub, food)
    if @wallet >= food.price
      pub.food_sale(food)
      @wallet -= food.price
      @drunkenness -= food.rejuvenation_level
    end
  end

end
