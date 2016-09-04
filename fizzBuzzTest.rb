require 'minitest/autorun'
require_relative 'fizzBuzz'

describe "FizzBuzz" do
  it "outputs 1 for 1" do
    assert_equal 1, fizzBuzz(1)
  end

  # it "outputs 2 for 2" do
  #   assert_equal 2, fizzBuzz(2)
  # end
end
