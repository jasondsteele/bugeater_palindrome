# frozen_string_literal: true

require_relative "bugeater_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.scan(/[a-z]/i).join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.letters.downcase
    end

end