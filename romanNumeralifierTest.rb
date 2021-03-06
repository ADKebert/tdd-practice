# Testing the roman-numeralifier class.  It should convert numbers 0-2999 to their
# roman numeral equivalents

require 'minitest/autorun'
require_relative 'romanNumeralifier'

describe "RomanNumeralifier" do
  it "should return I-III for 1-3" do
    rn = RomanNumeralifier.new
    assert_equal "I", rn.numeralify(1)
    assert_equal "III", rn.numeralify(3)
  end

  it "should return IV for 4" do
    rn = RomanNumeralifier.new
    assert_equal "IV", rn.numeralify(4)
  end

  it "should return V-VIII for 5-8" do
    rn = RomanNumeralifier.new
    assert_equal "V", rn.numeralify(5)
    assert_equal "VIII", rn.numeralify(8)
  end

  it "should return IX for 9" do
    rn = RomanNumeralifier.new
    assert_equal "IX", rn.numeralify(9)
  end

  it "should return X-XIII for 10-13" do
    rn = RomanNumeralifier.new
    assert_equal "X", rn.numeralify(10)
    assert_equal "XII", rn.numeralify(12)
  end

  it "should return XIV for 14" do
    rn = RomanNumeralifier.new
    assert_equal "XIV", rn.numeralify(14)
  end

  it "should return XV-XVIII for 15-18" do
    rn = RomanNumeralifier.new
    assert_equal "XV", rn.numeralify(15)
    assert_equal "XVI", rn.numeralify(16)
  end

  it "should return XIX for 19" do
    rn = RomanNumeralifier.new
    assert_equal "XIX", rn.numeralify(19)
  end

  it "should add additional X to the front for 20 and again for 30-39" do
    rn = RomanNumeralifier.new
    assert_equal "XX", rn.numeralify(20)
    assert_equal "XXX", rn.numeralify(30)
    assert_equal "XXVII", rn.numeralify(27)
  end

  it "should return XL for 40" do
    rn = RomanNumeralifier.new
    assert_equal "XL", rn.numeralify(40)
  end

  it "should return XLI-XLIX for 41-49" do
    rn = RomanNumeralifier.new
    assert_equal "XLI", rn.numeralify(41)
    assert_equal "XLVIII", rn.numeralify(48)
    assert_equal "XLIX", rn.numeralify(49)
  end

  it "should return L for 50" do
    rn = RomanNumeralifier.new
    assert_equal "L", rn.numeralify(50)
  end

  it "should prepend L for 51 - 89" do
    rn = RomanNumeralifier.new
    assert_equal "LIII", rn.numeralify(53)
    assert_equal "LXIV", rn.numeralify(64)
    assert_equal "LXXXIX", rn.numeralify(89)
  end

  it "should return XC for 90" do
    rn = RomanNumeralifier.new
    assert_equal "XC", rn.numeralify(90)
  end

  it "should return C for 100" do
    rn = RomanNumeralifier.new
    assert_equal "C", rn.numeralify(100)
  end

  it "should CD for 400" do
    rn = RomanNumeralifier.new
    assert_equal "CD", rn.numeralify(400)
  end

  it "should return D for 500" do
    rn = RomanNumeralifier.new
    assert_equal "D", rn.numeralify(500)
  end

  it "should return CM for 900" do
    rn = RomanNumeralifier.new
    assert_equal "CM", rn.numeralify(900)
  end

  it "should return M for 1000" do
    rn = RomanNumeralifier.new
    assert_equal "M", rn.numeralify(1000)
  end

  it "should return MMCMXCIX for 2999" do
    rn = RomanNumeralifier.new
    assert_equal "MMCMXCIX", rn.numeralify(2999)
  end
end
