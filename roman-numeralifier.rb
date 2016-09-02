class RomanNumeralifier
  def numeralify(number)
    numeral = ""

    if number > 29
      numeral += "X"
      number -= 10
    end

    if number > 19
      numeral += "X"
      number -= 10
    end

    if number == 19
      numeral += "XIX"
    elsif number > 14
      numeral += "XV" + "I" * (number - 15)
    elsif number == 14
      numeral += "XIV"
    elsif number > 9
      numeral += "X" + "I" * (number - 10)
    elsif number == 9
      numeral += "IX"
    elsif number == 4
      numeral += "IV"
    elsif number > 4
      numeral += "V" + "I"  * (number - 5)
    else
      numeral += "I" * number
    end
  end
end
