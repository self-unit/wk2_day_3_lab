require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')
require_relative('../pub')
require_relative('../customer')

class CustomerTest < MiniTest::Test

def setup

  @red_drink = Drink.new("Sambuca", 5, 40)
  @orange_drink = Drink.new("Screwdriver", 4, 5)
  @yellow_drink = Drink.new("Advocaat", 2, 12)
  @green_drink = Drink.new("Midori", 3, 14)
  @blue_drink = Drink.new("Blue Bols", 1, 21)

  @bar_1 = Pub.new("The Winchester", 300, [@red_drink, @orange_drink, @yellow_drink, @green_drink, @blue_drink])

  @customer1 = Customer.new("Dolph Lundgren", 50, 60)
  @customer2 = Customer.new("Eric Cartmen", 12, 10)
end

def test_customer_has_name
  assert_equal("Dolph Lundgren", @customer1.name)
end

def test_customer_wallet_value
  assert_equal(50, @customer1.wallet)
end

def test_customer_can_buy_drink
  @customer1.buy_drink(@bar_1, @orange_drink)
  assert_equal(4, @bar_1.drinks.count)
  assert_equal(46, @customer1.wallet)
  assert_equal(304, @bar_1.till)
end

def test_age
  assert_equal(60, @customer1.age)

end

def test_customer_too_young
  @customer2.buy_drink(@bar_1, @orange_drink)
  assert_equal(5, @bar_1.drinks.count)
  assert_equal(12, @customer2.wallet)
  assert_equal(300, @bar_1.till)

end

def test_customer_too_drunk
  @customer1.buy_drink(@bar_1, @red_drink)
  @customer1.buy_drink(@bar_1, @blue_drink)
  @customer1.buy_drink(@bar_1, @green_drink)

  assert_equal(3, @bar_1.drinks.count)
  assert_equal(44, @customer1.wallet)
  assert_equal(306, @bar_1.till)

end

end
