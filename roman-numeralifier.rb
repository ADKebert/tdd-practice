class RomanNumeralifier
  def numeralify(number)
    numeral = ""
    while number > 999
      numeral += "M"
      number -= 1000
    end

    if number > 899
      numeral += "CM"
      number -= 900
    end

    if number > 499
      numeral += "D"
      number -= 500
    end

    if number > 399
      numeral += "CD"
      number -= 400
    end

    if number > 99
      numeral += "C"
      number -= 100
    end

    if number > 89
      numeral += "XC"
      number -= 90
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
