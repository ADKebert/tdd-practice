require "minitest/autorun"
require_relative "nthPrime"

describe NthPrime do
  # I should give a number to nth prime and it should
  # return the nth prime number starting at 2.

  it "should return 2 for n = 1" do
    assert_equal 2, nth_prime(1)
  end
end
