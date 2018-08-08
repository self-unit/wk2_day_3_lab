require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')
require_relative('../pub')
require_relative('../customer')

class CustomerTest < MiniTest::Test

def setup
  @customer1 = Customer.new("Dolph Lundgren", 50)
end

def test_customer_has_name
  assert_equal("Dolph Lundgren", @customer1.name)
end

def test_customer_wallet_value
  assert_equal(50, @customer1.wallet)
end

end
