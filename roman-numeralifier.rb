class RomanNumeralifier
  def numeralify(number)
    if number == 4
      "IV"
    elsif number > 4
      "V" + "I"  * (number - 5)
    else
      "I" * number
    end
  end
end
