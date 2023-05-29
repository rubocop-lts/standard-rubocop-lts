# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
### Changed
### Fixed
### Removed

## [1.0.2] 2023-05-29
### Added
- `version_gem` for library version introspection
### Changed
- `Standard::Rubocop::Lts::VERSION` refactored to `Standard::Rubocop::Lts::Version::VERSION`
### Removed
- Duplicated lines from `README.md`
- Circular dependency in gemspec (on `standard-rubocop-lts`, which is this gem)

## [1.0.1] 2023-04-16
### Fixed
- config/*.yml rubocop configs were not shipped with v1.0.0
### Changed
- Minimum Ruby Version is 2.7

## [1.0.0] 2023-04-16 [YANKED]
### Added
- Initial release

[Unreleased]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.0...HEAD
[1.0.1]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.0...v1.0.1
[1.0.0]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/0c0f82c0eeda184afb5c2c7a3d6b43c10f2d4c1c...v1.0.0
