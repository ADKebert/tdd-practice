require 'minitest/autorun'

describe "CoinChanger" do
  # For this problem I think it's pretty easy to think about
  # the range of values for each coin when creating the tests
  # returns between 0-4 pennies

  # returns 0-1 nickels

  # For 6-9 cents a mixture of nickels and dimes is possible
  # returns 1 nickel and 0-4 pennies for values 6-9

  # returns 0-2 dimes

  # After I get one dime I should get a mix of nickels and pennies along with the
  # dime before I get to 20 cents
  # returns an appropriate mix of dimes, nickels, and pennies

  # returns 0-3 quarters

  # Intermediate values between quarters can contain all 4 coins.  Correct values
  # at this stage constitutes our acceptance condition
  # returns an appropriate mix of dimes, nickels, pennies, and quarters
  
end
