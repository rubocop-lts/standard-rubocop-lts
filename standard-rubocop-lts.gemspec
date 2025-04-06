# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/standard/rubocop/lts/version.rb"
gem_version = Standard::Rubocop::Lts::Version::VERSION
Standard::Rubocop::Lts::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.name = "standard-rubocop-lts"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.summary = "Extended Standard Ruby Configs for Finely Aged Rubies"
  spec.description = "Extended Standard Ruby Configs for Finely Aged Rubies; Compatible with rubocop-lts"
  spec.homepage = "https://gitlab.com/rubocop-lts/#{spec.name}"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = "https://rubocop-lts.gitlab.io/"
  spec.metadata["source_code_uri"] = "#{spec.homepage}/-/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/-/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/-/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/-/wikis/home"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rb",
    "sig/**/*.rbs",
    "config/**/*.yml",
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

  # Utilities
  spec.add_dependency("version_gem", ">= 1.1.6", "< 3")                           # Ruby >= 2.2.0

  # Linting
  spec.add_dependency "standard", ">= 1.35.1", "< 2"                              # Ruby >= 2.6.0, v1.38+ is Ruby >= 3.0.0
  spec.add_dependency "standard-custom", ">= 1.0.2", "< 2"                        # Ruby >= 2.6.0
  # standard-performance pulls in rubocop-performance
  spec.add_dependency "standard-performance", ">= 1.3.1", "< 2"                   # Ruby >= 2.7.0

  # Normally this would be a development dependency, but it does ship with rubocop configuration
  #   and that configuration was added to every rubocop-ruby*_* gems' rubocop configs,
  #   resulting in a shared-but-undeclared dependency.
  # The simplest fix is to add it here, since they all depend on this gem.
  # This is a temporary solution, which will be removed with the release of the rubocop-lts-rspec gem,
  #   which will consolidate the RSpec configs for the RuboCop-LTS ecosystem.
  spec.add_dependency("rspec-block_is_expected", "~> 1.0", ">= 1.0.5")            # Ruby >= 1.8.7

  # Internal/Private/Platform-specific development dependencies are specified in Gemfile *only*.
  # External/Public development dependencies are specified in gemspec *only*.
  # See:
  #   - https://github.com/rubygems/rubygems/discussions/5065#discussioncomment-7031586
  #   - https://msp-greg.github.io/rubocop/RuboCop/Cop/Gemspec/DevelopmentDependencies.html

  # Releases
  spec.add_development_dependency("rake", "~> 13.2", ">= 13.2.1")                 # Ruby >= 2.3.0
  spec.add_development_dependency("stone_checksums", "~> 1.0")                    # Ruby >= 2.2.0

  # Code Coverage
  # CodeCov + GitHub setup is not via gems: https://github.com/marketplace/actions/codecov
  spec.add_development_dependency("kettle-soup-cover", "~> 1.0", ">= 1.0.5")      # Ruby >= 2.7.0

  # Documentation
  spec.add_development_dependency("yard", "~> 0.9", ">= 0.9.37")                  # Ruby >= 0
  spec.add_development_dependency("yard-junk", "~> 0.0", ">= 0.0.10")             # Ruby >= 2.7.0

  # Linting
  # We run rubocop on the latest version of Ruby,
  #   but in support of the oldest supported version of Ruby
  spec.add_development_dependency "rubocop-lts", "~> 24.0", ">= 24.0.2"           # Linting for Ruby >= 3.2
  # Additional linting gems that are not packaged with rubocop-lts, but are integrated by it.
  spec.add_development_dependency("rubocop-packaging", "~> 0.6", ">= 0.6.0")      # Ruby >= 2.7.0
  spec.add_development_dependency("rubocop-rspec", "~> 3.5", ">= 3.5.0")          # Ruby >= 2.7.0

  # Testing
  spec.add_development_dependency("rspec", "~> 3.13")                             # Ruby >= 0
  spec.add_development_dependency("rspec_junit_formatter", "~> 0.6")              # Ruby >= 2.3.0
  spec.add_development_dependency("rspec-stubbed_env", "~> 1.0", ">= 1.0.1")      # Ruby >= 1.8.7
end
