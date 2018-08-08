require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')

class DrinksTest < MiniTest::Test

def setup
  red_drink = Drink.new("Sambuca", 5)
  orange_drink = Drink.new("Screwdriver", 4)
  yellow_drink = Drink.new("Advocaat", 2)
  green_drink = Drink.new("Midori", 3)
  blue_drink = Drink.new("Blue Bols", 1)
end

  def test_drink_has_name
    assert_equal("Advocaat", yellow_drink.name)
  end

end
