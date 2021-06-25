# frozen_string_literal: true

require_relative "lib/shark/version"

Gem::Specification.new do |spec|
  spec.name          = "shark-scraper-cli"
  spec.version       = Shark::VERSION
  spec.authors       = ["Kayla Luebbert"]
  spec.email         = ["luebbertkayla@gmail.com"]

  spec.summary       = "Shark and Ray CLI"
  spec.description   = "Provides information on 40 sharks and rays."
  spec.homepage      = "https://rubygems.org/gems/shark-scraper-cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = "https://github.com/luebbertkayla/shark-scraper-cli"
  spec.metadata["source_code_uri"] = "https://github.com/luebbertkayla/shark-scraper-cli/"
  spec.metadata["changelog_uri"] = "https://github.com/luebbertkayla/shark-scraper-cli/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  #spec.bindir        = "exe"
  spec.executables   << 'shark-scraper-cli' # = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_dependency "nokogiri", ">= 0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
