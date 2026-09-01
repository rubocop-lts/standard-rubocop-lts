# Changelog

[![SemVer 2.0.0][📌semver-img]][📌semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][📗keep-changelog],
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html),
and [yes][📌major-versions-not-sacred], platform and engine support are part of the [public API][📌semver-breaking].
Please file a bug if you notice a violation of semantic versioning.

[📌semver]: https://semver.org/spec/v2.0.0.html
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

## [Unreleased]

### Added

### Changed

- [kc] kettle-jem/prepare: updated 28 project files:
  - configuration (1)
  - dependencies (25)
  - other (2)

- [kc] kettle-jem/template: updated 15 project files:
  - code and tests (2)
  - configuration (1)
  - dependencies (5)
  - documentation (2)
  - other (4)
  - workflows (1)

### Deprecated

### Removed

### Fixed

- Updated the License-Eye dependency override for standard 1.56.0 so the license compatibility workflow recognizes the locked dependency.

### Security

## [2.0.11] - 2026-08-09

- TAG: [v2.0.11][2.0.11t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 100.00% documented

### Added

- kettle-jem-template-20260720-005 - README Support & Community links now
  include RubyForum.
- kettle-jem-template-20260726-001 - Projects now include YARD lint
  configuration and documentation dependencies so documentation issues fail
  before generated docs are refreshed.
- kettle-jem-template-20260727-001 - Spec harness documentation now lists the
  RSpec helpers provided by `kettle-test`.

- Enable the shared rubocop-lts-ruby API compatibility plugin in every versioned LTS profile.

### Changed

- kettle-jem-template-20260716-002 - Gemspecs now ship fewer repository-only
  files, reducing package noise for downstream packagers.
- kettle-jem-template-20260720-002 - Development Gemfiles now use the released
  `tree_sitter_language_pack` gem 1.13.3 or newer by default.
- kettle-jem-template-20260725-002 - Version specs now use `anonymous_loader` to
  cover `version.rb` without redefining constants, or are removed when version
  specs are not managed for the project.
- kettle-jem-template-20260728-001 - Generated Ruby workflows now use clearer
  setup-ruby-flash planning and can prepare appraisal-only jobs without
  installing the main Gemfile bundle.

- kettle-jem-template-20260801-001 - Generated README gem dashboard links now
  use ClickGems instead of BestGems.

### Fixed

- kettle-jem-template-20260720-003 - StructuredMerge Git diff driver config now
  uses the installed `smorg-rb` driver command.
- kettle-jem-template-20260725-001 - Release pull request branches beginning
  with `feature/release` now run JRuby and TruffleRuby workflows.
- kettle-jem-template-20260726-002 - Generated version files now document their
  version namespace and constants, reducing warning-only YARD lint output.
- kettle-jem-template-20260726-003 - Coverage upload steps now treat Coveralls,
  QLTY, and Codecov as optional, so provider outages do not fail CI when local
  coverage thresholds still pass.
- kettle-jem-template-20260728-002 - Generated RuboCop configs now ignore the
  same `gemfiles/vendor/bundle` tree as `.gitignore`, so vendored dependency
  installs are not reported as project lint debt.
- kettle-jem-template-20260728-003 - Generated dep-heads workflows now run
  TruffleRuby jobs with current RubyGems and Bundler, avoiding setup failures
  before the test suite starts.
- kettle-jem-template-20260728-004 - Generated dep-heads workflows now use the
  setup-ruby Bundler install path for direct appraisal Gemfiles, avoiding rv
  lockfile parser failures on Git and path dependencies.
- kettle-jem-template-20260728-005 - VersionGem bootstrap now creates the
  missing canonical version spec when a project only has shim namespace version
  specs.
- kettle-jem-template-20260730-001 - Gemspec package file enumeration now runs
  relative to the gemspec directory, so release package contents stay correct
  even when the gemspec is loaded from another working directory.

- kettle-jem-template-20260801-002 - Generated RSpec helpers now normalize
  managed configuration block bindings structurally, preventing mixed block
  parameter names from producing invalid configuration after a merge.
- kettle-jem-template-20260801-003 - Generated project metadata and
  documentation now normalize configured underscore hostnames to valid
  hyphenated hostnames.
- kettle-jem-template-20260801-004 - Generated organization README logos now
  use GitHub's stable organization avatar endpoint instead of assuming a
  matching Galtzo-hosted asset exists.

- kettle-jem-template-20260802-001 - Devcontainer JSON files now merge as JSONC,
  preserving comments and trailing commas during template updates.

## [2.0.10] - 2026-07-03

- TAG: [v2.0.10][2.0.10t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 71.43% documented

### Fixed

- Package configured license files in gem release file lists.

## [2.0.9] - 2026-06-29

- TAG: [v2.0.9][2.0.9t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 71.43% documented

### Fixed

- Restored recursive packaging of `config/**/*.yml` without using a frozen
  duplicate `spec.files` override, so `config/internal/*.yml` is included in
  built gems and remains compatible with kettle-jem gemspec merging.

## [2.0.8] - 2026-06-28

- TAG: [v2.0.8][2.0.8t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 71.43% documented

### Fixed

- Restored the gemspec `spec.files` declaration so packaged gems include the
  intended public files and configuration payload.

## [2.0.7] - 2026-06-25

- TAG: [v2.0.7][2.0.7t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 71.43% documented

### Added

- Added support for JRuby 10.1 and TruffleRuby 34.0.

### Changed

- Retemplated project metadata and CI/development automation with `kettle-jem` v7.0.0.

### Fixed

- Folded the Dogfood RuboCop rules into the primary RuboCop config so normal
  autocorrect owns generated-file style, and fixed license-check CI drift after
  dependency updates.
- Added the Appraisal RuboCop formatter plugin to the templating bundle.
- Restored `docs/CNAME` so the generated documentation site keeps its custom domain.
- Corrected misspelled contact metadata to use `galtzo.com`.

## [2.0.5] - 2026-06-07

- TAG: [v2.0.5][2.0.5t]
- COVERAGE: 100.00% -- 19/19 lines in 4 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 4 files
- 71.43% documented

### Fixed

- Disabled autocorrection for `Style/RedundantParentheses`, preventing invalid Ruby from grouped `and` / `or` method arguments.

## [2.0.4] 2026-06-01

### Added

### Changed

- Updated dependency floors:
  - `standard` to `~> 1.54`, `>= 1.54.0`.
  - `standard-performance` to `~> 1.9`, `>= 1.9.0`.
  - `version_gem` to `~> 1.1`, `>= 1.1.9`.
  - Release, lint, and test dependencies to their latest compatible floors.
- Corrected gem metadata to declare the Ruby 3.2 runtime floor that has been implicit since the last major release.

### Fixed

### Removed

## [2.0.3] 2026-06-01

### Added

### Changed

- Required `kettle-soup-cover` v1.1.3 for release specs.

### Fixed

### Removed

## [2.0.2] 2026-05-30

### Added

### Changed

- Updated release and documentation dependencies.

### Fixed

### Removed

- rubocop-shopify as a transitive dependency (removed from all rubocop-rubyN_N gems)

## [2.0.0] 2025-04-17

- COVERAGE: 100.00% -- 18/18 lines in 4 files
- BRANCH COVERAGE: 100.00% -- 0/0 branches in 4 files
- 100.00% documented

### Added

- `stone_checksums` v1.0.0 for release checksums
- Rules to prevent churn in bin/bundle
- Ability to package gem without signing (e.g. for linux distros)

### Changed

- RuboCop 1.72+ (new plugin system)
- Contributor Covenant v2.1
- Upgrade to version_gem v1.1.7

### Fixed

- (Better) Linting Support for Ruby 1.8, 1.9, 2.0

### Removed

- Runtime Support for Ruby 2.7, 3.0, 3.1
  - Minimum runtime is Ruby 3.2

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

[Unreleased]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.11...HEAD
[2.0.11]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.10...v2.0.11
[2.0.11t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.11
[2.0.10]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.9...v2.0.10
[2.0.10t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.10
[2.0.9]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.8...v2.0.9
[2.0.9t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.9
[2.0.8]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.7...v2.0.8
[2.0.8t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.8
[2.0.7]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.5...v2.0.7
[2.0.7t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.7
[2.0.5]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/v2.0.4...v2.0.5
[2.0.5t]: https://github.com/rubocop-lts/standard-rubocop-lts/releases/tag/v2.0.5
[2.0.4]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v2.0.3...v2.0.4
[2.0.3]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v2.0.2...v2.0.3
[2.0.2]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v2.0.0...v2.0.2
[1.0.11]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/compare/v1.0.10...v1.0.11
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
[1.0.0]: https://github.com/rubocop-lts/standard-rubocop-lts/compare/0c0f82c0eeda184afb5c2c7a3d6b43c10f2d4c1c...v1.0.0
