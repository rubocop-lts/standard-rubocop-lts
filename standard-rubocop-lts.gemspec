# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "standard-rubocop-lts"
  # Loading version into an anonymous module allows version.rb to get code coverage from SimpleCov!
  # See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-2630782358
  spec.version = Module.new.tap { |mod| Kernel.load("lib/standard/rubocop/lts/version.rb", mod) }::Standard::Rubocop::Lts::Version::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # Linux distros may package ruby gems differently,
  #   and securely certify them independently via alternate package management systems.
  # Ref: https://gitlab.com/oauth-xx/version_gem/-/issues/3
  # Hence, only enable signing if the cert_file is present.
  # See CONTRIBUTING.md
  default_user_cert = "certs/#{ENV.fetch("GEM_CERT_USER", ENV["USER"])}.pem"
  default_user_cert_path = File.join(__dir__, default_user_cert)
  cert_file_path = ENV.fetch("GEM_CERT_PATH", default_user_cert_path)
  cert_chain = cert_file_path.split(",")
  if cert_file_path && cert_chain.map { |fp| File.exist?(fp) }
    spec.cert_chain = cert_chain
    if $PROGRAM_NAME.end_with?("gem", "rake") && ARGV[0] == "build"
      spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem")
    end
  end

  spec.summary = "Extended Standard Ruby Configs for Finely Aged Rubies"
  spec.description = <<~DESC
    Enables Ruby projects to more confidently support even the most finely-aged Rubies.
    Part of the rubocop-lts family.
  DESC
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
    "config/**/*.yml",
    "lib/**/*.rb",
    "sig/**/*.rbs",
    # Files (alphabetical)
    "rubocop.yml",
  ]
  # Automatically included with gem package, no need to list again in files.
  spec.extra_rdoc_files = Dir[
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
  ]
  spec.rdoc_options += [
    "--title",
    "#{spec.name} - #{spec.summary}",
    "--main",
    "README.md",
    "--line-numbers",
    "--inline-source",
    "--quiet",
  ]
  spec.require_paths = ["lib"]
  spec.bindir = "exe"
  spec.executables = []

  # Utilities
  spec.add_dependency("version_gem", ">= 1.1.7", "< 3")                       # Ruby >= 2.2.0

  # Linting
  spec.add_dependency("standard", ">= 1.35.1", "< 2")                         # Ruby >= 2.6.0, v1.38+ is Ruby >= 3.0.0
  spec.add_dependency("standard-custom", ">= 1.0.2", "< 2")                   # Ruby >= 2.6.0
  # standard-performance pulls in rubocop-performance
  spec.add_dependency("standard-performance", ">= 1.3.1", "< 2")              # Ruby >= 2.7.0

  # Internal/Private/Platform-specific development dependencies are specified in Gemfile *only*.
  # External/Public development dependencies are specified in gemspec *only*.
  # See:
  #   - https://github.com/rubygems/rubygems/discussions/5065#discussioncomment-7031586
  #   - https://msp-greg.github.io/rubocop/RuboCop/Cop/Gemspec/DevelopmentDependencies.html

  # Releases
  spec.add_development_dependency("rake", "~> 13.2", ">= 13.2.1")             # Ruby >= 2.3.0
  spec.add_development_dependency("stone_checksums", "~> 1.0")                # Ruby >= 2.2.0

  # Code Coverage
  # CodeCov + GitHub setup is not via gems: https://github.com/marketplace/actions/codecov
  spec.add_development_dependency("kettle-soup-cover", "~> 1.0", ">= 1.0.5")  # Ruby >= 2.7.0

  # Documentation
  spec.add_development_dependency("yard", "~> 0.9", ">= 0.9.37")              # Ruby >= 0
  spec.add_development_dependency("yard-junk", "~> 0.0", ">= 0.0.10")         # Ruby >= 2.7.0

  # Linting
  # We run rubocop on the latest version of Ruby,
  #   but in support of the oldest supported version of Ruby
  spec.add_development_dependency("rubocop-lts", "~> 24.0", ">= 24.0.2")      # Linting for Ruby >= 3.2
  # Additional linting gems that are not packaged with rubocop-lts, but are integrated by it.
  spec.add_development_dependency("rubocop-packaging", "~> 0.6", ">= 0.6.0")  # Ruby >= 2.7.0
  spec.add_development_dependency("rubocop-rspec", "~> 3.5", ">= 3.5.0")      # Ruby >= 2.7.0

  # Testing
  spec.add_development_dependency("rspec", "~> 3.13")                         # Ruby >= 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0", ">= 1.0.6")  # Ruby >= 1.8.7
  spec.add_development_dependency("rspec_junit_formatter", "~> 0.6")          # Ruby >= 2.3.0
  spec.add_development_dependency("rspec-stubbed_env", "~> 1.0", ">= 1.0.1")  # Ruby >= 1.8.7
end
