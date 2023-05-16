# frozen_string_literal: true

require_relative "lib/standard/rubocop/lts/version"

Gem::Specification.new do |spec|
  spec.name = "standard-rubocop-lts"
  spec.version = Standard::Rubocop::Lts::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "Extended Standard Ruby Configs for Finely Aged Rubies"
  spec.description = "Extended Standard Ruby Configs for Finely Aged Rubies; Compatible with rubocop-lts"
  spec.homepage = "https://rubocop-lts.gitlab.io/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rb",
    "sig/**/*.rbs",
    "config/*.yml",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "rubocop.yml",
    "SECURITY.md"
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "standard", ["~> 1.28", "< 2"]              # >= 2.6.0
  # standard-performance pulls in rubocop-performance
  spec.add_dependency "standard-performance", ["~> 1.0", "< 2"]   # >= 2.6.0
  spec.add_dependency "standard-custom", ["~> 1.0", "< 2"]        # >= 2.6.0

  # RubyGems adding this gem will need to explicitly add rubocop-packaging to their dependencies.
  # Since it only applies to rubygems we do not add it as a runtime dependency of this gem.
  spec.add_development_dependency("rubocop-gradual", "~> 0.3")                # >= 2.6.0
  spec.add_development_dependency("rubocop-md", "~> 1.2")                     # >= 2.6.0
  spec.add_development_dependency("rubocop-packaging", "~> 0.5")              # >= 2.6.0
  spec.add_development_dependency("rubocop-rake", "~> 0.6")                   # >= 2.5.0
  spec.add_development_dependency("rubocop-thread_safety", "~> 0.5")          # >= 2.5.0
  spec.add_development_dependency "standard-rubocop-lts", ["~> 1.0", "< 2"]   # >= 2.6.0
end
