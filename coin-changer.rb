def change(total)
  if total < 5
    [total, 0, 0, 0]
  else
    [0, total / 5, 0, 0]
  end
end
