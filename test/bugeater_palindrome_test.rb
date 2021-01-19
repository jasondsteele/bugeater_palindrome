# frozen_string_literal: true

require "test_helper"

class BugeaterPalindromeTest < Minitest::Test
  
  def test_not_a_palindrome
    refute "testFail".palindrome?
  end
  
  def test__a_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_test
    assert "RaceCar".palindrome?
  end
  
  def test_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end
  
  def test_letters
    assert_equal  "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
