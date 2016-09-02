class RomanNumeralifier
  def numeralify(number)
    if number == 4
      "IV"
    else
      "I" * number
    end
  end
end
