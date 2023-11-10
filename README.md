<p align="center">
    <a href="https://rubocop.org#gh-light-mode-only"  target="_blank" rel="noopener">
      <img height="120px" src="https://github.com/rubocop-lts/standard-rubocop-lts/raw/main/docs/images/logo/rubocop-light.svg?raw=true" alt="SVG RuboCop Logo, Copyright (c) 2014 Dimiter Petrov, CC BY-NC 4.0, see docs/images/logo/README.txt">
    </a>
    <a href="https://rubocop.org#gh-dark-mode-only"  target="_blank" rel="noopener">
      <img height="120px" src="https://github.com/rubocop-lts/standard-rubocop-lts/raw/main/docs/images/logo/rubocop-dark.svg?raw=true" alt="SVG RuboCop Logo, Copyright (c) 2014 Dimiter Petrov, CC BY-NC 4.0, see docs/images/logo/README.txt">
    </a>
    <a href="https://www.ruby-lang.org/" target="_blank" rel="noopener">
      <img height="120px" src="https://github.com/rubocop-lts/standard-rubocop-lts/raw/main/docs/images/logo/ruby-logo.svg?raw=true" alt="Yukihiro Matsumoto, Ruby Visual Identity Team, CC BY-SA 2.5, see docs/images/logo/README.txt">
    </a>
    <a href="https://semver.org/#gh-light-mode-only" target="_blank" rel="noopener">
      <img height="120px" src="https://github.com/rubocop-lts/standard-rubocop-lts/raw/main/docs/images/logo/semver-light.svg?raw=true" alt="SemVer.org Logo by @maxhaz, see docs/images/logo/README.txt">
    </a>
    <a href="https://semver.org/#gh-dark-mode-only" target="_blank" rel="noopener">
      <img height="120px" src="https://github.com/rubocop-lts/standard-rubocop-lts/raw/main/docs/images/logo/semver-dark.svg?raw=true" alt="SemVer.org Logo by @maxhaz, see docs/images/logo/README.txt">
    </a>
</p>

# 🦾 Standard::Rubocop::Lts

Extended [standard (Standard Ruby)][standardrb] config shims for all your finely-aged rubies,
back to Ruby version 1.8. Compatible with the `rubocop-lts` [gem family](#-a-gem-family).

Use the rules standard gives you, and then add more,
to increase your code's compatibility across multiple versions of Ruby.

Only reach as far back as you need to go!

[standardrb]: https://github.com/standardrb/standard

---

The **RuboCop LTS** family of gems is the distillation of almost 20 years
of my own Ruby expertise and source code diving,
built on the shoulders of the expertise of many others;
organizing that expertise into per-Ruby-version sets of configurations.

Although the situation has improved somewhat,
it remains [_unsafe_ to upgrade RuboCop, or Standard][Why-Build-This],
in a project that supports EOL Rubies.

I hope it helps others avoid some of the challenges I've had with library maintenance,
and supporting decade-old mission-critical applications.

Avoid bike-shedding, use `rubocop-lts` in every project, and
let it manage your linting complexity!

If the `rubocop-lts` stack of libraries has helped you, or your organization,
please support my efforts by making a donation, or becoming a sponsor.

[Why-Build-This]: https://rubocop-lts.gitlab.io/about/#why-build-this-

<div id="badges">

[![Liberapay Patrons][⛳liberapay-img]][⛳liberapay]
[![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor]

<span class="badge-buymeacoffee">
<a href="https://ko-fi.com/O5O86SNP4" target='_blank' title="Donate to my FLOSS or refugee efforts at ko-fi.com"><img src="https://img.shields.io/badge/buy%20me%20coffee-donate-yellow.svg" alt="Buy me coffee donation button" /></a>
</span>
<span class="badge-patreon">
<a href="https://patreon.com/galtzo" title="Donate to my FLOSS or refugee efforts using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a>
</span>

</div>

[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling

---

NOTE: You might be interested in [`rubocop-lts`][rlts] which sits as a higher level than, and depends on, this gem.
It will enable your Ruby style rules to keep pace with whatever version of Ruby your project happens to be on!

| Gem Name                      | Version                             | Downloads                                                            | CI                                                                    | Activity                                                                                                                                              |
|-------------------------------|-------------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| [`rubocop-lts`][⛳️lts-gh]     | [![Gem Version][⛳️lts-vi]][⛳️lts-g] | [![Total DL][🖇️lts-dti]][⛳️lts-g] [![DL Rank][🏘️lts-rti]][⛳️lts-g] | [![Current][🚎lts-cwfi]][🚎lts-cwf]                                   | [![Open Issues][📗lts-ioi]][📗lts-io] [![Closed Issues][🚀lts-ici]][🚀lts-ic] [![Open PRs][💄lts-poi]][💄lts-po] [![Closed PRs][👽lts-pci]][👽lts-pc] |
| [`standard-rubocop-lts`][⛳️ini-gh] | [![Gem Version][⛳️ini-vi]][⛳️ini-g] | [![Total DL][🖇️ini-dti]][⛳️ini-g] [![DL Rank][🏘️ini-rti]][⛳️ini-g] | [![Current][🚎ini-cwfi]][🚎ini-cwf] [![Heads][🖐ini-hwfi]][🖐ini-hwf] | [![Open Issues][📗ini-ioi]][📗ini-io] [![Closed Issues][🚀ini-ici]][🚀ini-ic] [![Open PRs][💄ini-poi]][💄ini-po] [![Closed PRs][👽ini-pci]][👽ini-pc] |

<!-- columnar badge #s for Project Health table:
⛳️
🖇
🏘
🚎
🖐
🧮
📗
🚀
💄
👽
-->

[⛳️lts-vi]: http://img.shields.io/gem/v/rubocop-lts.svg
[🖇️lts-dti]: https://img.shields.io/gem/dt/rubocop-lts.svg
[🏘️lts-rti]: https://img.shields.io/gem/rt/rubocop-lts.svg
[🚎lts-cwf]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/current.yml
[🚎lts-cwfi]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/current.yml/badge.svg
[🖐lts-hwf]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/heads.yml
[🖐lts-hwfi]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/heads.yml/badge.svg
[🧮lts-lwf]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/legacy.yml
[🧮lts-lwfi]: https://github.com/rubocop-lts/rubocop-lts/actions/workflows/legacy.yml/badge.svg
[📗lts-io]: https://github.com/rubocop-lts/rubocop-lts/issues
[📗lts-ioi]: https://img.shields.io/github/issues-raw/rubocop-lts/rubocop-lts
[🚀lts-ic]: https://github.com/rubocop-lts/rubocop-lts/issues?q=is%3Aissue+is%3Aclosed
[🚀lts-ici]: https://img.shields.io/github/issues-closed-raw/rubocop-lts/rubocop-lts
[💄lts-po]: https://github.com/rubocop-lts/rubocop-lts/pulls
[💄lts-poi]: https://img.shields.io/github/issues-pr/rubocop-lts/rubocop-lts
[👽lts-pc]: https://github.com/rubocop-lts/rubocop-lts/pulls?q=is%3Apr+is%3Aclosed
[👽lts-pci]: https://img.shields.io/github/issues-pr-closed/rubocop-lts/rubocop-lts
[⛳️lts-g]: https://rubygems.org/gems/rubocop-lts
[⛳️lts-gh]: https://github.com/rubocop-lts/rubocop-lts

[⛳️ini-vi]: http://img.shields.io/gem/v/standard-rubocop-lts.svg
[🖇️ini-dti]: https://img.shields.io/gem/dt/standard-rubocop-lts.svg
[🏘️ini-rti]: https://img.shields.io/gem/rt/standard-rubocop-lts.svg
[🚎ini-cwf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/current.yml
[🚎ini-cwfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/current.yml/badge.svg
[🖐ini-hwf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/heads.yml
[🖐ini-hwfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/heads.yml/badge.svg
[🧮ini-lwf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/legacy.yml
[🧮ini-lwfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/legacy.yml/badge.svg
[📗ini-io]: https://github.com/rubocop-lts/standard-rubocop-lts/issues
[📗ini-ioi]: https://img.shields.io/github/issues-raw/rubocop-lts/standard-rubocop-lts
[🚀ini-ic]: https://github.com/rubocop-lts/standard-rubocop-lts/issues?q=is%3Aissue+is%3Aclosed
[🚀ini-ici]: https://img.shields.io/github/issues-closed-raw/rubocop-lts/standard-rubocop-lts
[💄ini-po]: https://github.com/rubocop-lts/standard-rubocop-lts/pulls
[💄ini-poi]: https://img.shields.io/github/issues-pr/rubocop-lts/standard-rubocop-lts
[👽ini-pc]: https://github.com/rubocop-lts/standard-rubocop-lts/pulls?q=is%3Apr+is%3Aclosed
[👽ini-pci]: https://img.shields.io/github/issues-pr-closed/rubocop-lts/standard-rubocop-lts
[⛳️ini-g]: https://rubygems.org/gems/standard-rubocop-lts
[⛳️ini-gh]: https://github.com/rubocop-lts/standard-rubocop-lts

### 👪 A Gem Family

The `rubocop-lts` family of gems has a version supporting any version of Ruby you need.
They can be used as development dependencies for libraries or applications.

- [`rubocop-lts`][rlts]
- [`standard-rubocop-lts`][stdrlts]
- [`rubocop-ruby1_8`][rr18]
- [`rubocop-ruby1_9`][rr19]
- [`rubocop-ruby2_0`][rr20]
- [`rubocop-ruby2_1`][rr21]
- [`rubocop-ruby2_2`][rr22]
- [`rubocop-ruby2_3`][rr23]
- [`rubocop-ruby2_4`][rr24]
- [`rubocop-ruby2_5`][rr25]
- [`rubocop-ruby2_6`][rr26]
- [`rubocop-ruby2_7`][rr27]
- [`rubocop-ruby3_0`][rr30]
- [`rubocop-ruby3_1`][rr31]
- [`rubocop-ruby3_2`][rr32]

[rlts]: https://rubocop-lts.gitlab.io/#installation-
[stdrlts]: https://gitlab.com/rubocop-lts/standard-rubocop-lts
[rr18]: https://gitlab.com/rubocop-lts/rubocop-ruby1_8
[rr19]: https://gitlab.com/rubocop-lts/rubocop-ruby1_9
[rr20]: https://gitlab.com/rubocop-lts/rubocop-ruby2_0
[rr21]: https://gitlab.com/rubocop-lts/rubocop-ruby2_1
[rr22]: https://gitlab.com/rubocop-lts/rubocop-ruby2_2
[rr23]: https://gitlab.com/rubocop-lts/rubocop-ruby2_3
[rr24]: https://gitlab.com/rubocop-lts/rubocop-ruby2_4
[rr25]: https://gitlab.com/rubocop-lts/rubocop-ruby2_5
[rr26]: https://gitlab.com/rubocop-lts/rubocop-ruby2_6
[rr27]: https://gitlab.com/rubocop-lts/rubocop-ruby2_7
[rr30]: https://gitlab.com/rubocop-lts/rubocop-ruby3_0
[rr31]: https://gitlab.com/rubocop-lts/rubocop-ruby3_1
[rr32]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2

## 🗿 Stable

All releases of this gem are stable releases.
We do not release new versions for every release of `rubocop`,
as this gem is tied to [standard (Standard Ruby)][standardrb].
A typical release cycle for a gem in the `rubocop-lts` family is roughly every six months,
though eventually analysis support for an old version of Ruby will be dropped.
When that happens releases of the `rubocop-lts` gem for that version of Ruby will (mostly) cease.

## ✨ Installation

In case you missed it above - you may be better off _not_ depending on this gem _directly_.
See [`rubocop-lts`][rlts] which sits as a higher level than, and depends on, this gem.
It will enable your Ruby style rules to keep pace with whatever version of Ruby your project happens to be on!

If, OTOH, you want to use this gem directly, carry on!

Install the gem and add to the application's Gemfile by executing:

    $ bundle add standard-rubocop-lts

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install standard-rubocop-lts

## 🔧 Basic Usage

Add to the top of your project's `.rubocop.yml` configuration file:

```yaml
inherit_gem:
  # Replace {RUBY_MAJOR_VERSION} with the minimum major version of ruby you want to target.
  # Replace {RUBY_MINOR_VERSION} with the minimum minor version of ruby you want to target.
  standard-rubocop-lts: config/ruby-{RUBY_MAJOR_VERSION}-{RUBY_MINOR_VERSION}.yml
```

<details>
  <summary>What will this do for me?</summary>

Among other settings specific to your chosen minimum version of ruby,
the above _effectively_ results in the following config (& more):

```yaml
# We want Exclude and Include directives from different
#   config files to get merged, not overwritten
inherit_mode:
  merge:
    - Exclude
    - Include

require:
  - standard-rubocop-lts
  - standard
  - standard-performance
  - standard-custom
  - rubocop-performance

# Load basic rules for this version of Ruby from standard.
# Rules are overridden in a LIFO stack.
# If rubocop-performance is listed first, and standard-performance after it,
#   then rubocop-performance's rules will take precedence.
# This is the opposite of what you might expect.
# Below: standard's rules override rubocop-performance's (mostly disabling rules)
inherit_gem:
  standard: config/ruby-1.8.yml
  standard-performance: config/ruby-1.8.yml
  standard-custom: config/base.yml
  rubocop-performance: config/default.yml

AllCops:
  NewCops: enable

# See:
#   https://github.com/rubocop/rubocop-performance/issues/240
#   https://github.com/rubocop/rubocop-performance/pull/241
Performance/Casecmp:
  Enabled: false

# See: https://github.com/rubocop/rubocop-performance/issues/329#issuecomment-1375527811
Performance/BlockGivenWithExplicitBlock:
  Enabled: false

# See: https://github.com/rubocop/rubocop-performance/issues/329#issuecomment-1451511402
Performance/ArraySemiInfiniteRangeSlice:
  Enabled: false

# See: https://github.com/rubocop/rubocop-performance/issues/329#issuecomment-1451511402
Performance/BigDecimalWithNumericArgument:
  Enabled: false

# See: https://github.com/rubocop/rubocop-performance/issues/329#issuecomment-1451511402
Performance/IoReadlines:
  Enabled: false

# Plus: Ruby-version-specific configs provided by "standard" family of gems
# Plus+: Ruby-version-specific configs that standard does not have
```
</details>

### What about TargetRubyVersion?

**Instead of using this gem, `standard-rubocop-lts`, use `rubocop-lts`, which depends on this gem.
```ruby
# NOTE: Picking the right version of rubocop-lts automatically aligns:
#       - gemspec's required_ruby_version
#       - RuboCop's TargetRubyVersion
# e.g. v18 for Ruby >= 2.7.0
gem "rubocop-lts", "~> 18.2.1", require: false
```

## 💻 Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests w/ coverage,
or `bin/rake` to run tests w/ coverage, and linting.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

### 🚀 Release Instructions

See [CONTRIBUTING.md][contributing].

## ⚡️ Contributing

See [CONTRIBUTING.md][contributing]

## 🌈 Contributors

[![Contributors](https://contrib.rocks/image?repo=rubocop-lts/standard-rubocop-lts)]("https://github.com/rubocop-lts/standard-rubocop-lts/graphs/contributors")

Made with [contributors-img](https://contrib.rocks).

## 📄 License

The gem is available as open source under the terms of
the [MIT License][license] [![License: MIT][license-img]][license-ref].
See [LICENSE.txt][license] for the official [Copyright Notice][copyright-notice-explainer].

<details>
  <summary>Project Logos (standard-rubocop-lts)</summary>

See [docs/images/logo/README.txt][project-logos]
</details>

<details>
  <summary>Organization Logo (rubocop-lts)</summary>

Author: [Yusuf Evli][org-logo-author]
Source: [Unsplash][org-logo-source]
License: [Unsplash License][org-logo-license]
</details>

[project-logos]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/docs/images/logo/README.txt
[org-logo-author]: https://unsplash.com/@yusufevli
[org-logo-source]: https://unsplash.com/photos/yaSLNLtKRIU
[org-logo-license]: https://unsplash.com/license

### © Copyright

* Copyright (c) 2023 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

## 🤝 Code of Conduct

Everyone interacting in this project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/CODE_OF_CONDUCT.md).

## 📌 Versioning

This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations of this scheme should be reported as
bugs. Specifically, if a minor or patch version is released that breaks backward compatibility, a new version should be
immediately released that restores compatibility. Breaking changes to the public API will only be introduced with new
major versions.

As a result of this policy, you can (and should) specify a dependency on this gem using
the [Pessimistic Version Constraint][pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency "standard-rubocop-lts", "~> 1.0"
```

[aboutme]: https://about.me/peter.boling
[actions]: https://github.com/rubocop-lts/standard-rubocop-lts/actions
[angelme]: https://angel.co/peter-boling
[blogpage]: http://www.railsbling.com/tags/standard-rubocop-lts/
[codecov_coverage]: https://codecov.io/gh/rubocop-lts/standard-rubocop-lts
[code_triage]: https://www.codetriage.com/rubocop-lts/standard-rubocop-lts
[chat]: https://gitter.im/rubocop-lts/standard-rubocop-lts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[climate_coverage]: https://codeclimate.com/github/rubocop-lts/standard-rubocop-lts/test_coverage
[climate_maintainability]: https://codeclimate.com/github/rubocop-lts/standard-rubocop-lts/maintainability
[copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year
[conduct]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/CODE_OF_CONDUCT.md
[contributing]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/CONTRIBUTING.md
[devto]: https://dev.to/galtzo
[documentation]: https://rubydoc.info/github/rubocop-lts/standard-rubocop-lts/main
[followme]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow
[gh_discussions]: https://github.com/rubocop-lts/standard-rubocop-lts/discussions
[gh_sponsors]: https://github.com/sponsors/pboling
[issues]: https://github.com/rubocop-lts/standard-rubocop-lts/issues
[liberapay_donate]: https://liberapay.com/pboling/donate
[license]: LICENSE.txt
[license-ref]: https://opensource.org/licenses/MIT
[license-img]: https://img.shields.io/badge/License-MIT-green.svg
[peterboling]: http://www.peterboling.com
[pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[railsbling]: http://www.railsbling.com
[rubygems]: https://rubygems.org/gems/standard-rubocop-lts
[security]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/SECURITY.md
[semver]: http://semver.org/
[source]: https://github.com/rubocop-lts/standard-rubocop-lts/
[tweetme]: http://twitter.com/galtzo
