def change(total)
  if total < 5
    [total, 0, 0, 0]
  else
    [total % 5, total / 5, 0, 0]
  end
end
