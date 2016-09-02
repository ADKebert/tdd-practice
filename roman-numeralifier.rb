class RomanNumeralifier
  def numeralify(number)
    if number > 14
      "XV" + "I" * (number - 15)
    elsif number == 14
      "XIV"
    elsif number > 9
      "X" + "I" * (number - 10)
    elsif number == 9
      "IX"
    elsif number == 4
      "IV"
    elsif number > 4
      "V" + "I"  * (number - 5)
    else
      "I" * number
    end
  end
end
