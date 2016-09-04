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
end
