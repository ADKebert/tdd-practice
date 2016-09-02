def change(total)
  if total < 5
    [total, 0, 0, 0]
  elsif total < 10
    [total % 5, total / 5, 0, 0]
  elsif total < 25
    [total % 5, total % 10 / 5, total / 10, 0]
  else
    [total % 5, total % 25 % 10 / 5, total % 25 / 10, total / 25]
  end
end
