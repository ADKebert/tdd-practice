def fizzBuzz(number)
  if number == 15
    "fizzBuzz"
  elsif number % 5 == 0
    "buzz"
  elsif number % 3 == 0
    "fizz"
  else
    number
  end
end
