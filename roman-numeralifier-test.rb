# Testing the roman-numeralifier class.  It should convert numbers 0-2999 to their
# roman numeral equivalents

require 'minitest/autorun'

describe "RomanNumeralifier" do
  it "should return I-III for 1-3" do
    rn = RomanNumeralifier.new
    assert_equal "I", rn.numeralify(1)
    assert_equal "III", rn.numeralify(3)
  end

  # should return IV for 4

  # should return V-VIII for 5-8

  # should return IX for 9

  # should return X-XIII for 10-13

  # should return XIV for 14

  # should return XV-XVIII for 15-18

  # should return XIX for 19

  # should add additional X to the front for 20 and again for 30-39

  # should return XL for 40

  # should return XLI-XLIX for 40-49

  # should return L for 50

  # should prepend L for 51 - 89

  # should return XC for 90

  # should return C for 100

  # should CD for 400

  # should return D for 500

  # should return CM for 900

  # should return M for 1000

  # should return MMCMXCIX for 2999
end
