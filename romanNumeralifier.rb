class RomanNumeralifier
  NUMERAL_KEYS = {
    1000 => "M",
    900  => "CM",
    500  => "D",
    400  => "CD",
    100  => "C",
    90   => "XC",
    50   => "L",
    40   => "XL",
    10   => "X",
    9    => "IX",
    5    => "V",
    4    => "IV",
    1    => "I"
  }

  def numeralify(number)
    numeral = ""

    NUMERAL_KEYS.each do |k, v|
      while number >= k
        numeral += v
        number -= k
      end
    end

    numeral
  end
end
