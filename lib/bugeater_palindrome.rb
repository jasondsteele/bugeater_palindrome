# frozen_string_literal: true

require_relative "bugeater_palindrome/version"

module BugeaterPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/\w/).join.downcase
    end

end

class String
  include BugeaterPalindrome
end

class Integer
  include BugeaterPalindrome
end