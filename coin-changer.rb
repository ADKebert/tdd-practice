# Defining constants for coin denominations
QUARTER = 25
DIME = 10
NICKEL = 5
PENNY = 1

def change(total)
  # [total % 5, total % 25 % 10 / 5, total % 25 / 10, total / 25]
  coins = []
  coins[3] = total / QUARTER
  total = total % QUARTER

  coins[2] = total / DIME
  total = total % DIME

  coins[1] = total / NICKEL
  total = total % NICKEL

  coins[0] = total

  coins
end
