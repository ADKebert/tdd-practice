require "minitest/autorun"
require_relative "anagrams"

describe "Anagrams" do
  it "should return [] if there are no anagrams" do
    assert_equal [], anagrams("ant", %w{hot pot tat tart})
  end

  it "should return an anagram if there is one" do
    assert_equal ["tan"], anagrams("ant", %w{hot tan tat tart})
  end

  it "shouldn't return an anagram for a substring" do
    assert_equal [], anagrams("ant", %w{hot tangy tat tart})
  end

  it "shouldn't match the word itself" do
    assert_equal ["tan"], anagrams("ant", %w{hot tan ant tart})
  end
end
