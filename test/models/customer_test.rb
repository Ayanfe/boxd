require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

  def setup
    @customer = Customer.new(name: "Oluwadamilare Olusakin", email:"Oluwadamilare_olusakin@yahoo.com",
    password:"Dammiiee12", password_confirmation:"Dammiiee12")
  end

  test "customer should be valid" do
    @customer.valid?
  end

  test "name should not be blank" do
    @customer.name = " "
    assert_not @customer.valid?
  end
  test "email should not be blank" do
    @customer.email = " "
    assert_not @customer.valid?
  end

  test "email should not be too long" do
    @customer.email = "a"*244+"@example.com"
    assert_not @customer.valid?
  end


end
