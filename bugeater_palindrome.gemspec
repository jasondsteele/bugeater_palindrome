# frozen_string_literal: true

require_relative "lib/bugeater_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "bugeater_palindrome"
  spec.version       = BugeaterPalindrome::VERSION
  spec.authors       = ["Jason Steele"]
  spec.email         = ["jason@bugeaterdev.com"]

  spec.summary       = "Palindrome gem"
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://gitlab.com/bugeater/bugeater_palindrome.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitlab.com/bugeater/bugeater_palindrome.git"
  spec.metadata["changelog_uri"] = "https://gitlab.com/bugeater/bugeater_palindrome.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-reporters", "~> 1.2.0"


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
