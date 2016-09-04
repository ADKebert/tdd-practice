require "minitest/autorun"
require_relative "anagrams"

describe "Anagrams" do
  it "should return [] if there are no anagrams" do
    assert_equal [], anagrams("ant", %w{hot pot tat tart})
  end
end
