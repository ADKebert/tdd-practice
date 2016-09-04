require 'minitest/autorun'
require_relative 'fizzBuzz'

describe "FizzBuzz" do
  it "outputs 1 for 1" do
    assert_equal 1, fizzBuzz(1)
  end

  it "outputs 2 for 2" do
    assert_equal 2, fizzBuzz(2)
  end

  it "outputs fizz for 3" do
    assert_equal "fizz", fizzBuzz(3)
  end

  it "outputs 4 for 4" do
    assert_equal 4, fizzBuzz(4)
  end

  it "outputs buzz for 5" do
    assert_equal "buzz", fizzBuzz(5)
  end

  it "outputs fizz for 6 and 9" do
    assert_equal "fizz", fizzBuzz(6)
    assert_equal "fizz", fizzBuzz(9)
  end

  it "outputs buzz for 10" do
    assert_equal "buzz", fizzBuzz(10)
  end

  it "outputs 11 for 11" do
    assert_equal 11, fizzBuzz(11)
  end

  it "outputs fizzBuzz for 15" do
    assert_equal "fizzBuzz", fizzBuzz(15)
  end
end
