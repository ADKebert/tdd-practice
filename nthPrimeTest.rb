require "minitest/autorun"
require_relative "nthPrime"

describe NthPrime do
  # I should give a number to nth prime and it should
  # return the nth prime number starting at 2.

  it "should return 2 for n = 1" do
    assert_equal 2, NthPrime.new.nth_prime(1)
  end

  it "should return 3 for n = 2" do
    assert_equal 3, NthPrime.new.nth_prime(2)
  end

  it "should return 5 for n = 3" do
    assert_equal 5, NthPrime.new.nth_prime(3)
  end

  it "should return 13 for n = 6" do
    assert_equal 13, NthPrime.new.nth_prime(6)
  end

  it "should return 5 for n = 10_001" do
    assert_equal 104_743, NthPrime.new.nth_prime(10_001)
  end
end
