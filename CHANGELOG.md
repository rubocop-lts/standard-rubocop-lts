# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
### Changed
### Fixed
### Removed

## [1.0.10] 2024-03-23
### Added
- Moved development dependencies back to gemspec
  - See: https://github.com/rubygems/rubygems/discussions/5065#discussioncomment-7031586
- kettle-soup-cover v1.0.2 for Code Coverage (dev dependency)
- rspec-stubbed_env v1.0.1 for testing ENV variable-based logic (dev dependency)
### Changed
- Disable `Rake/MethodDefinitionInTask` Cop
  - Cop is 66% incorrect, and hasn't been fixed in 2+ years.
  - See: https://github.com/rubocop/rubocop-rake/issues/42
- `AllCops/NewCops` is now disabled
  - Allows other libraries to make those decisions:
    - rubocop-lts
    - rubocop-ruby*_*
    - rubocop-shopify
    - standard
- rspec-block_is_expected promoted to runtime dependency
  - was an undeclared dependency of rubocop-ruby*_* gems,
  - adding here was the simplest way to fix them all at once,
  - but is a temporary fix; will be replaced by new gem rubocop-lts-rspec
  - see gemspec for details
- standard v1.35.1
- standard-performance v1.3.1
- version_gem v1.1.4
- rspec 3.13.0 (dev dependency)
- rubocop v1.62.1 (dev dependency)
- rubocop-gradual v0.3.4 (dev dependency)
- rubocop-md v1.2.2 (dev dependency)
- rubocop-rspec 2.27.1 (dev dependency)
- rubocop-shopify 2.15.1 (dev dependency)
### Fixed
- AllCops/TargetRubyVersion is now set according to:
  - `rubocop-lts` version, or
  - `rubocop-ruby*_*` version

## [1.0.9] 2023-09-20
### Changed
- standard v1.31.1
- standard-performance v1.2
- simplecov-rcov dev dependency back to mainline release 0.3.3
### Fixed
- `Gemspec/DevelopmentDependencies` Cop changed to "gemspec"
  - See: https://github.com/rubygems/rubygems/discussions/5065#discussioncomment-7031586

## [1.0.8] 2023-07-07
### Fixed
- compatibility with changes from standard v1.30.1

## [1.0.7] 2023-06-08
### Changed
- follow best practices for gemspec
  - put all dev dependencies in Gemfile
  - See: https://github.com/rubygems/rubygems/discussions/5065
- enable some `Gemspec` cops that standard turns off
- improve documentation

## [1.0.6] 2023-06-03
### Fixed
- ship internal configs with gem

## [1.0.5] 2023-06-03
### Fixed
- require deps for configs 1.9 - 3.3

## [1.0.4] 2023-06-03
### Fixed
- rubocop-shopify > standard gem family of rules
  - v1.0.0 intended for rubocop-shopify to override standard's rules, now it actually does
  - override mechanism in rubocop.yml config is counter-intuitive :(
- Stop doubly loading style libs and configs with more careful config structure
### Changed
- disable several rubocop-performance cops that are bad cops

## [1.0.3] 2023-05-29
### Added
- Gem releases are now signed!
### Fixed
- URIs in gemspec (now point to GitLab)

## [1.0.2] 2023-05-29
### Added
- `version_gem` for library version introspection
### Changed
- Set Style/SymbolArray to brackets for Ruby < 2.0 compat
  - Previously only set for Ruby 1.8
- Set Style/WordArray to brackets for Ruby < 2.0 compat
  - Previously only set for Ruby 1.8
- Disable Style/PercentLiteralDelimiters for Ruby < 2.0 compat
- `Standard::Rubocop::Lts::VERSION` refactored to `Standard::Rubocop::Lts::Version::VERSION`
### Fixed
- Removed obsolete loading of `standard-custom`'s now defunct `config/ruby-2.2.yml`
  - See: https://github.com/standardrb/standard-custom/issues/2
### Removed
- Duplicated lines from `README.md`
- Circular dependency in gemspec (on `standard-rubocop-lts`, which is this gem)

## [1.0.2] 2023-05-29
### Changed
- Update to standard 1.28.4

## [1.0.1] 2023-04-16
### Fixed
- config/*.yml rubocop configs were not shipped with v1.0.0
### Changed
- Minimum Ruby Version is 2.7

## [1.0.0] 2023-04-16 [YANKED]
### Added
- Initial release

[Unreleased]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.10...HEAD
[1.0.10]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.9...v1.0.10
[1.0.9]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.8...v1.0.9
[1.0.8]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.7...v1.0.8
[1.0.7]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.6...v1.0.7
[1.0.6]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.5...v1.0.6
[1.0.5]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.4...v1.0.5
[1.0.4]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.3...v1.0.4
[1.0.3]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.2...v1.0.3
[1.0.2]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.1...v1.0.2
[1.0.1]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.0...v1.0.1
[1.0.0]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/0c0f82c0eeda184afb5c2c7a3d6b43c10f2d4c1c...v1.0.0
