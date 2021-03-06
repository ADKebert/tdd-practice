require 'minitest/autorun'
require_relative 'coinChanger'

describe "CoinChanger" do
  # For this problem I think it's pretty easy to think about
  # the range of values for each coin when creating the tests
  it "returns between 0-4 pennies" do
    assert_equal [1, 0, 0, 0], change(1)
    assert_equal [4, 0, 0, 0], change(4)
  end

  it "returns 0-1 nickels" do
    assert_equal [0, 0, 0, 0], change(0)
    assert_equal [0, 1, 0, 0], change(5)
  end

  # For 6-9 cents a mixture of nickels and dimes is possible
  it "returns 1 nickel and 0-4 pennies for values 6-9" do
    assert_equal [1, 1, 0, 0], change(6)
    assert_equal [3, 1, 0, 0], change(8)
  end

  it "returns 0-2 dimes" do
    assert_equal [0, 0, 1, 0], change(10)
    assert_equal [0, 0, 2, 0], change(20)
  end

  # After I get one dime I should get a mix of nickels and pennies along with the
  # dime before I get to 20 cents
  it "returns an appropriate mix of dimes, nickels, and pennies" do
    assert_equal [3, 0, 1, 0], change(13)
    assert_equal [2, 1, 1, 0], change(17)
  end

  it "returns 0-3 quarters" do
    assert_equal [0, 0, 0, 1], change(25)
    assert_equal [0, 0, 0, 3], change(75)
  end

  # Intermediate values between quarters can contain all 4 coins.  Correct values
  # at this stage constitutes our acceptance condition
  it "returns an appropriate mix of dimes, nickels, pennies, and quarters" do
    assert_equal [4, 0, 2, 3], change(99)
    assert_equal [1, 1, 1, 1], change(41)
  end

end
