class RomanNumeralifier
  attr_accessor :numeral, :number

  def initialize
    @numeral = ""
  end

  def numeralify(number)
    @number = number

    build_numeral
    @numeral
  end

  def build_numeral
    number = @number
    if number < 4
      @numeral += "I" * (number)
      return
    end

    case number
    when number > 999
      @numeral += "M"
      @number -= 1000
    when number > 899
      @numeral += "CM"
      @number -= 900
    when number > 499
      @numeral += "D"
      @number -= 500
    when number > 399
      @numeral += "CD"
      @number -= 400
    when number > 99
      @numeral += "C"
      @number -= 100
    when number > 89
      @numeral += "XC"
      @number -= 90
    when number > 49
      @numeral += "L"
      @number -= 50
    when number > 39
      @numeral += "XL"
      @number -= 40
    when number > 9
      @numeral += "X"
      @number -= 10
    when number == 9
      @numeral += "IX"
      @number -= 9
    when number > 4
      @numeral += "V" + "I" * (number - 5)
      @number -= number
    when number == 4
      @numeral += "IV"
      @number -= number
    end
    build_numeral
  end
end
