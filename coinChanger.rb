# Defining constants for coin denominations
QUARTER = 25
DIME = 10
NICKEL = 5
PENNY = 1

def change(total)
  coins = [QUARTER, DIME, NICKEL, PENNY]
  minimum_change = []
  
  coins.each do |coin|
    minimum_change.unshift total / coin
    total = total % coin
  end

  minimum_change
end
