# frozen_string_literal: true

# kettle-jem:freeze
# To retain chunks of comments & code during kettle-jem templating:
# Wrap custom sections with freeze markers (e.g., as above and below this comment chunk).
# kettle-jem will then preserve content between those markers across template runs.
# kettle-jem:unfreeze

gem_version =
  if Gem.ruby_version >= Gem::Version.new("3.1")
    # Loading Version into an anonymous module allows version.rb to get code coverage from SimpleCov!
    # See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-2630782358
    # See: https://github.com/panorama-ed/memo_wise/pull/397
    Module.new.tap { |mod| Kernel.load("#{__dir__}/lib/standard/rubocop/lts/version.rb", mod) }::Standard::Rubocop::Lts::Version::VERSION
  else
    require_relative "lib/standard/rubocop/lts/version"
    Standard::Rubocop::Lts::Version::VERSION
  end

Gem::Specification.new do |spec|
  spec.name = "standard-rubocop-lts"
  spec.version = gem_version
  spec.authors = ["Peter H. Boling"]
  spec.email = ["floss@galtzo.com"]

  spec.summary = "🦾 Extended Standard Ruby Configs tuned for compatibility with specified version of Ruby"
  spec.description = <<~DESC
    Enables Ruby projects to more confidently support even the most finely-aged Rubies.
    Part of the rubocop-lts family.
  DESC
  spec.homepage = "https://github.com/rubocop-lts/standard-rubocop-lts"
  spec.licenses = ["MIT"]
  spec.required_ruby_version = ">= 3.2.0"

  # Linux distros often package gems and securely certify them independent
  #   of the official RubyGem certification process. Allowed via ENV["SKIP_GEM_SIGNING"]
  # Ref: https://gitlab.com/ruby-oauth/version_gem/-/issues/3
  # Hence, only enable signing if `SKIP_GEM_SIGNING` is not set in ENV.
  # See CONTRIBUTING.md
  unless ENV.include?("SKIP_GEM_SIGNING")
    user_cert = "certs/#{ENV.fetch("GEM_CERT_USER", ENV["USER"])}.pem"
    cert_file_path = File.join(__dir__, user_cert)
    cert_chain = cert_file_path.split(",")
    cert_chain.select! { |fp| File.exist?(fp) }
    if cert_file_path && cert_chain.any?
      spec.cert_chain = cert_chain
      if $PROGRAM_NAME.end_with?("gem") && ARGV[0] == "build"
        spec.signing_key = File.join(Gem.user_home, ".ssh", "gem-private_key.pem")
      end
    end
  end

  spec.metadata["homepage_uri"] = "https://standard-rubocop-lts.galtzo.com"
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["funding_uri"] = "https://github.com/sponsors/pboling"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["news_uri"] = "https://www.railsbling.com/tags/#{spec.name}"
  spec.metadata["discord_uri"] = "https://discord.gg/3qme4XHNKN"
  spec.metadata["rubygems_mfa_required"] = "true"

  enumerate_package_files = lambda do |root|
    Dir.glob(File.join(root, "**", "*"), File::FNM_DOTMATCH).select do |path|
      File.file?(path) && ![".", ".."].include?(File.basename(path))
    end
  end

  # Automatically included with gem package, no need to list again in files.
  spec.extra_rdoc_files = Dir[
    # Files (alphabetical)
    "CHANGELOG.md",
    "CITATION.cff",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "FUNDING.md",
    "LICENSE.md",
    "README.md",
    "RUBOCOP.md",
    "SECURITY.md"
  ]
  spec.rdoc_options += [
    "--title",
    "#{spec.name} - #{spec.summary}",
    "--main",
    "README.md",
    "--exclude",
    "^sig/",
    "--line-numbers",
    "--inline-source",
    "--quiet"
  ]
  spec.bindir = "exe"
  # Listed files are the relative paths from bindir above.
  spec.executables = []

  # kettle-jem:freeze
  # This gem's published payload is primarily RuboCop configuration.
  spec.files = Dir[
    # Splats (alphabetical)
    "config/*.yml",
    "lib/**/*.rb",
    "sig/**/*.rbs",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.md",
    "README.md",
    "SECURITY.md"
  ]
  # kettle-jem:unfreeze

  spec.require_paths = ["lib"]

  # Utilities
  spec.add_dependency("version_gem", "~> 1.1", ">= 1.1.13")              # ruby >= 2.2.0
  spec.add_dependency("standard", "~> 1.54", ">= 1.54.0") # Ruby >= 3.0.0
  spec.add_dependency("standard-custom", "~> 1.0", ">= 1.0.2") # Ruby >= 2.6.0
  spec.add_dependency("standard-performance", "~> 1.9", ">= 1.9.0") # Ruby >= 3.0.0

  # NOTE: It is preferable to list development dependencies in the gemspec due to increased
  #       visibility and discoverability.
  #       However, development dependencies in gemspec will install on
  #       all versions of Ruby that will run in CI.
  #       This gem, and its gemspec runtime dependencies, will install on Ruby down to 3.2.0.
  #       This gem, and its gemspec development dependencies, will install on Ruby down to 3.2.0.
  #       Thus, dev dependencies in gemspec must have
  #
  #       required_ruby_version ">= 3.2.0" (or lower)
  #
  #       Development dependencies that require strictly newer Ruby versions should be in a "gemfile",
  #       and preferably a modular one (see gemfiles/modular/*.gemfile).

  spec.add_development_dependency("kettle-dev", "~> 2.2", ">= 2.2.19")     # ruby >= 3.2.0

  spec.add_development_dependency("bundler-audit", "~> 0.9.3")                      # ruby >= 2.0.0

  spec.add_development_dependency("rake", "~> 13.0")                                # ruby >= 2.2.0

  spec.add_development_dependency("require_bench", "~> 1.0", ">= 1.0.4")            # ruby >= 2.2.0

  spec.add_development_dependency("appraisal2", "~> 3.1", ">= 3.1.3")               # ruby >= 1.8.7, for testing against multiple versions of dependencies
  spec.add_development_dependency("kettle-test", "~> 2.0", ">= 2.0.7")             # ruby >= 3.2.0
  spec.add_development_dependency("turbo_tests2", "~> 3.1", ">= 3.1.5")            # ruby >= 2.4.0, default kettle-test runner

  spec.add_development_dependency("ruby-progressbar", "~> 1.13")                    # ruby >= 0
  spec.add_development_dependency("stone_checksums", "~> 1.0", ">= 1.0.3")          # ruby >= 2.2.0

  spec.add_development_dependency("gitmoji-regex", "~> 2.0", ">= 2.0.3")            # ruby >= 2.4
  spec.add_development_dependency("rspec", "~> 3.13", ">= 3.13.2") # Ruby >= 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0", ">= 1.0.6") # Ruby >= 1.8.7
  spec.add_development_dependency("rspec_junit_formatter", "~> 0.6", ">= 0.6.0") # Ruby >= 2.3.0
  spec.add_development_dependency("rspec-stubbed_env", "~> 1.0", ">= 1.0.4") # Ruby >= 1.8.7
  spec.add_development_dependency("rubocop-lts", "~> 24.1", ">= 24.1.0") # Ruby >= 3.2
  spec.add_development_dependency("rubocop-packaging", "~> 0.6", ">= 0.6.0") # Ruby >= 2.7.0
  spec.add_development_dependency("rubocop-rspec", "~> 3.9", ">= 3.9.0") # Ruby >= 2.7.0
  spec.add_development_dependency("yard", "~> 0.9", ">= 0.9.44") # Ruby >= 1.8.7
end
