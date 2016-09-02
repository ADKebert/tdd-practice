class RomanNumeralifier
  def numeralify(number)
    numeral = ""
    if number == 90
      return "XC"
    end

    if number > 49
      numeral += "L"
      number -= 50
    end

    if number > 39
      numeral += "XL"
      number -= 40
    end

    if number > 29
      numeral += "X"
      number -= 10
    end

    if number > 19
      numeral += "X"
      number -= 10
    end


    if number > 9
      numeral += "X"
      number -= 10
    end

    if number == 9
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
