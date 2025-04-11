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

[![Version][👽versioni]][👽version]
[![License: MIT][📄license-img]][📄license-ref]
[![Downloads Rank][👽dl-ranki]][👽dl-rank]
[![Open Source Helpers][👽oss-helpi]][👽oss-help]
[![Depfu][🔑depfui♻️]][🔑depfu]
[![CodeCov Test Coverage][🔑codecovi♻️]][🔑codecov]
[![Coveralls Test Coverage][🔑coveralls-img]][🔑coveralls]
[![CodeClimate Test Coverage][🔑cc-covi♻️]][🔑cc-cov]
[![Maintainability][🔑cc-mnti♻️]][🔑cc-mnt]
[![CI Heads][🚎3-hd-wfi]][🚎3-hd-wf]
[![CI Current][🚎11-c-wfi]][🚎11-c-wf]
[![CI Supported][🚎6-s-wfi]][🚎6-s-wf]
[![CI Test Coverage][🚎2-cov-wfi]][🚎2-cov-wf]
[![CI Style][🚎5-st-wfi]][🚎5-st-wf]
[![CI Dog Food][🚎8-df-wfi]][🚎8-df-wf]

---

[![Liberapay Patrons][⛳liberapay-img]][⛳liberapay]
[![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor]
[![Buy me a coffee][🖇buyme-small-img]][🖇buyme]
[![Polar Shield][🖇polar-img]][🖇polar]
[![Donate to my FLOSS or refugee efforts at ko-fi.com][🖇kofi-img]][🖇kofi]
[![Donate to my FLOSS or refugee efforts using Patreon][🖇patreon-img]][🖇patreon]

Extended [standard (Standard Ruby)][standardrb] config shims for all your finely-aged rubies,
back to Ruby version 1.8. Compatible with the `rubocop-lts` [gem family](#-a-gem-family).

Use the rules standard gives you, and then add more,
to increase your code's compatibility across multiple versions of Ruby.

Only reach as far back as you need to go!

[standardrb]: https://github.com/standardrb/standard

---

The **RuboCop LTS** family of gems is the distillation of more than 20 years
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

---

NOTE: You might be interested in [`rubocop-lts`][rlts] which sits as a higher level than, and depends on, this gem.
It will enable your Ruby style rules to keep pace with whatever version of Ruby your project happens to be on!

| Gem Name                           | Version                             | Downloads                                                            | CI                                                                    | Activity                                                                                                                                              |
|------------------------------------|-------------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| [`rubocop-lts`][⛳️lts-gh]          | [![Gem Version][⛳️lts-vi]][⛳️lts-g] | [![Total DL][🖇️lts-dti]][⛳️lts-g] [![DL Rank][🏘️lts-rti]][⛳️lts-g] | [![Current][🚎lts-cwfi]][🚎lts-cwf]                                   | [![Open Issues][📗lts-ioi]][📗lts-io] [![Closed Issues][🚀lts-ici]][🚀lts-ic] [![Open PRs][💄lts-poi]][💄lts-po] [![Closed PRs][👽lts-pci]][👽lts-pc] |
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
- [`rubocop-ruby3_3`][rr33]
- [`rubocop-ruby3_4`][rr34]

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
[rr33]: https://gitlab.com/rubocop-lts/rubocop-ruby3_3
[rr34]: https://gitlab.com/rubocop-lts/rubocop-ruby3_4

## 🗿 Stable

All releases of this gem are stable releases.
We do not release new versions for every release of `rubocop`,
as this gem is tied to [standard (Standard Ruby)][standardrb].
A typical release cycle for a gem in the `rubocop-lts` family is roughly every six months,
though eventually analysis support for an old version of Ruby will be dropped.
When that happens releases of the `rubocop-lts` gem for that version of Ruby will (mostly) cease.

## Info you can shake a stick at

| Tokens to Remember       | [![Gem name][⛳️name-img]][⛳️gem-name] [![Gem namespace][⛳️namespace-img]][⛳️gem-namespace]                                                                                                                                                                                                                                                                                                                                                                          |
|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Works with MRI Ruby 3.2+ | [![Ruby 3.2 Compat][💎ruby-3.2i]][🚎6-s-wf] [![Ruby 3.3 Compat][💎ruby-3.3i]][🚎6-s-wf] [![Ruby 3.4 Compat][💎ruby-c-i]][🚎11-c-wf] [![Ruby HEAD Compat][💎ruby-headi]][🚎3-hd-wf]                                                                                                                                                                                                                                                                                  |
| Source                   | [![Source on GitLab.com][📜src-gl-img]][📜src-gl] [![Source on Github.com][📜src-gh-img]][📜src-gh] [![The best SHA: dQw4w9WgXcQ!][🧮kloc-img]][🧮kloc]                                                                                                                                                                                                                                                                                                             |
| Documentation            | [![Current release on RubyDoc.info][📜docs-cr-rd-img]][🚎yard-current] [![HEAD on RubyDoc.info][📜docs-head-rd-img]][🚎yard-head] [![BDFL Blog][🚂bdfl-blog-img]][🚂bdfl-blog] [![Wiki][📜wiki-img]][📜wiki]                                                                                                                                                                                                                                                        |
| Compliance               | [![License: MIT][📄license-img]][📄license-ref] [![📄ilo-declaration-img]][📄ilo-declaration] [![Security Policy][🔐security-img]][🔐security] [![CodeQL][🖐codeQL-img]][🖐codeQL] [![Contributor Covenant 2.1][🪇conduct-img]][🪇conduct] [![SemVer 2.0.0][📌semver-img]][📌semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]                                                                                                            |
| Expert 1:1 Support       | [![Get help from me on Upwork][👨🏼‍🏫expsup-upwork-img]][👨🏼‍🏫expsup-upwork] `or` [![Get help from me on Codementor][👨🏼‍🏫expsup-codementor-img]][👨🏼‍🏫expsup-codementor]                                                                                                                                                                                                                                                                                    |
| Enterprise Support       | [![Get help from me on Tidelift][🏙️entsup-tidelift-img]][🏙️entsup-tidelift]<br/>💡Subscribe for support guarantees covering _all_ FLOSS dependencies!<br/>💡Tidelift is part of [Sonar][🏙️entsup-tidelift-sonar]!<br/>💡Tidelift pays maintainers to maintain the software you depend on!<br/>📊`@`Pointy Haired Boss: An [enterprise support][🏙️entsup-tidelift] subscription is "[never gonna let you down][🧮kloc]", and *supports* open source maintainers! |
| Comrade BDFL 🎖️         | [![Follow Me on LinkedIn][💖🖇linkedin-img]][💖🖇linkedin] [![Follow Me on Ruby.Social][💖🐘ruby-mast-img]][💖🐘ruby-mast] [![Follow Me on Bluesky][💖🦋bluesky-img]][💖🦋bluesky] [![Contact BDFL][🚂bdfl-contact-img]][🚂bdfl-contact] [![My technical writing][💖💁🏼‍♂️devto-img]][💖💁🏼‍♂️devto]                                                                                                                                                              |
| `...` 💖                 | [![Find Me on WellFound:][💖✌️wellfound-img]][💖✌️wellfound] [![Find Me on CrunchBase][💖💲crunchbase-img]][💖💲crunchbase] [![My LinkTree][💖🌳linktree-img]][💖🌳linktree] [![More About Me][💖💁🏼‍♂️aboutme-img]][💖💁🏼‍♂️aboutme]                                                                                                                                                                                                                             |

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
# We want the Exclude and Include directives from different
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
# e.g. v24 for Ruby >= 3.2.0
gem "rubocop-lts", "~> 24.0", require: false
```

## 💻 Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests w/ coverage,
or `bin/rake` to run tests w/ coverage, and linting.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

### 🚀 Release Instructions

See [CONTRIBUTING.md][🤝contributing].

## 🔐 Security

See [SECURITY.md][🔐security].

## 🤝 Contributing

If you need some ideas of where to help, you could work on adding more code coverage,
or if it is already 💯 (see [below](#code-coverage)) check TODOs (see [below](#todos)),
or check [issues][🤝issues], or [PRs][🤝pulls],
or use the gem and think about how it could be better.

We [![Keep A Changelog][📗keep-changelog-img]][📗keep-changelog] so if you make changes, remember to update it.

See [CONTRIBUTING.md][🤝contributing] for more detailed instructions.

### Code Coverage

[![Coverage Graph][🔑codecov-g♻️]][🔑codecov]

### 🪇 Code of Conduct

Everyone interacting in this project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [![Contributor Covenant 2.1][🪇conduct-img]][🪇conduct].

## 🌈 Contributors

[![Contributors][🖐contributors-img]][🖐contributors]

Made with [contributors-img][🖐contrib-rocks].

Also see GitLab Contributors: [https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/graphs/main][🚎contributors-gl]

## ⭐️ Star History

<a href="https://star-history.com/#rubocop-lts/standard-rubocop-lts&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=rubocop-lts/standard-rubocop-lts&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=rubocop-lts/standard-rubocop-lts&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=rubocop-lts/standard-rubocop-lts&type=Date" />
 </picture>
</a>

## 📌 Versioning

This Library adheres to [![Semantic Versioning 2.0.0][📌semver-img]][📌semver].
Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility,
a new version should be immediately released that restores compatibility.
Breaking changes to the public API will only be introduced with new major versions.

### 📌 Is "Platform Support" part of the public API?

Yes.  But I'm obligated to include notes...

SemVer should, but doesn't explicitly, say that dropping support for specific Platforms
is a *breaking change* to an API.
It is obvious to many, but not all, and since the spec is silent, the bike shedding is endless.

> dropping support for a platform is both obviously and objectively a breaking change

- Jordan Harband (@ljharb) [in SemVer issue 716][📌semver-breaking]

To get a better understanding of how SemVer is intended to work over a project's lifetime,
read this article from the creator of SemVer:

- ["Major Version Numbers are Not Sacred"][📌major-versions-not-sacred]

As a result of this policy, and the interpretive lens used by the maintainer,
you can (and should) specify a dependency on these libraries using
the [Pessimistic Version Constraint][📌pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency("standard-rubocop-lts", "~> 2.0")
```

See [CHANGELOG.md][📌changelog] for list of releases.

## 📄 License

The gem is available as open source under the terms of
the [MIT License][📄license] [![License: MIT][📄license-img]][📄license-ref].
See [LICENSE.txt][📄license] for the official [Copyright Notice][📄copyright-notice-explainer].

<details>
  <summary>Project Logos (standard-rubocop-lts)</summary>

See [docs/images/logo/README.txt][project-logos]

</details>

<details>
  <summary>Organization Logo (rubocop-lts)</summary>

- Author: [Yusuf Evli][org-logo-author]
- Source: [Unsplash][org-logo-source]
- License: [Unsplash License][org-logo-license]

</details>

[project-logos]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/docs/images/logo/README.txt
[org-logo-author]: https://unsplash.com/@yusufevli
[org-logo-source]: https://unsplash.com/photos/yaSLNLtKRIU
[org-logo-license]: https://unsplash.com/license

### © Copyright

<p>
  Copyright (c) 2023 - 2025 Peter H. Boling,
  <a href="https://railsbling.com">
    RailsBling.com
    <picture>
      <img alt="Rails Bling" height="20" src="https://railsbling.com/images/logos/RailsBling-TrainLogo.svg" />
    </picture>
  </a>
</p>

## 🤑 One more thing

You made it to the bottom of the page,
so perhaps you'll indulge me for another 20 seconds.
I maintain many dozens of gems, including this one,
because I want Ruby to be a great place for people to solve problems, big and small.
Please consider supporting my efforts via the giant yellow link below,
or one of the others at the head of this README.

[![Buy me a latte][🖇buyme-img]][🖇buyme]

```ruby
spec.add_dependency("standard-rubocop-lts", "~> 2.0")
```

[✇bundle-group-pattern]: https://gist.github.com/pboling/4564780
[⛳️gem-namespace]: https://github.com/rubocop-lts/standard-rubocop-lts/blob/main/lib/masq.rb
[⛳️namespace-img]: https://img.shields.io/badge/namespace-Kettle%3A%3ASoup%3A%3ACover-brightgreen.svg?style=flat&logo=ruby&logoColor=white
[⛳️gem-name]: https://rubygems.org/gems/standard-rubocop-lts
[⛳️name-img]: https://img.shields.io/badge/name-kettle--soup--cover-brightgreen.svg?style=flat&logo=rubygems&logoColor=red
[🚂bdfl-blog]: http://www.railsbling.com/tags/standard-rubocop-lts
[🚂bdfl-blog-img]: https://img.shields.io/badge/blog-railsbling-0093D0.svg?style=for-the-badge&logo=rubyonrails&logoColor=orange
[🚂bdfl-contact]: http://www.railsbling.com/contact
[🚂bdfl-contact-img]: https://img.shields.io/badge/Contact-BDFL-0093D0.svg?style=flat&logo=rubyonrails&logoColor=red
[💖🖇linkedin]: http://www.linkedin.com/in/peterboling
[💖🖇linkedin-img]: https://img.shields.io/badge/PeterBoling-LinkedIn-0B66C2?style=flat&logo=newjapanprowrestling
[💖✌️wellfound]: https://angel.co/u/peter-boling
[💖✌️wellfound-img]: https://img.shields.io/badge/peter--boling-orange?style=flat&logo=wellfound
[💖💲crunchbase]: https://www.crunchbase.com/person/peter-boling
[💖💲crunchbase-img]: https://img.shields.io/badge/peter--boling-purple?style=flat&logo=crunchbase
[💖🐘ruby-mast]: https://ruby.social/@galtzo
[💖🐘ruby-mast-img]: https://img.shields.io/mastodon/follow/109447111526622197?domain=https%3A%2F%2Fruby.social&style=flat&logo=mastodon&label=Ruby%20%40galtzo
[💖🦋bluesky]: https://galtzo.bsky.social
[💖🦋bluesky-img]: https://img.shields.io/badge/@galtzo.bsky.social-0285FF?style=flat&logo=bluesky&logoColor=white
[💖🌳linktree]: https://linktr.ee/galtzo
[💖🌳linktree-img]: https://img.shields.io/badge/galtzo-purple?style=flat&logo=linktree
[💖💁🏼‍♂️devto]: https://dev.to/galtzo
[💖💁🏼‍♂️devto-img]: https://img.shields.io/badge/dev.to-0A0A0A?style=flat&logo=devdotto&logoColor=white
[💖💁🏼‍♂️aboutme]: https://about.me/peter.boling
[💖💁🏼‍♂️aboutme-img]: https://img.shields.io/badge/about.me-0A0A0A?style=flat&logo=aboutme&logoColor=white
[👨🏼‍🏫expsup-upwork]: https://www.upwork.com/freelancers/~014942e9b056abdf86?mp_source=share
[👨🏼‍🏫expsup-upwork-img]: https://img.shields.io/badge/UpWork-13544E?style=for-the-badge&logo=Upwork&logoColor=white
[👨🏼‍🏫expsup-codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[👨🏼‍🏫expsup-codementor-img]: https://img.shields.io/badge/CodeMentor-Get_Help-1abc9c?style=for-the-badge&logo=CodeMentor&logoColor=white
[🏙️entsup-tidelift]: https://tidelift.com/subscription
[🏙️entsup-tidelift-img]: https://img.shields.io/badge/Tidelift_and_Sonar-Enterprise_Support-FD3456?style=for-the-badge&logo=sonar&logoColor=white
[🏙️entsup-tidelift-sonar]: https://blog.tidelift.com/tidelift-joins-sonar
[💁🏼‍♂️peterboling]: http://www.peterboling.com
[🚂railsbling]: http://www.railsbling.com
[📜src-gl-img]: https://img.shields.io/badge/GitLab-FBA326?style=for-the-badge&logo=Gitlab&logoColor=orange
[📜src-gl]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/
[📜src-gh-img]: https://img.shields.io/badge/GitHub-238636?style=for-the-badge&logo=Github&logoColor=green
[📜src-gh]: https://github.com/rubocop-lts/standard-rubocop-lts
[📜docs-cr-rd-img]: https://img.shields.io/badge/RubyDoc-Current_Release-943CD2?style=for-the-badge&logo=readthedocs&logoColor=white
[📜docs-head-rd-img]: https://img.shields.io/badge/RubyDoc-HEAD-943CD2?style=for-the-badge&logo=readthedocs&logoColor=white
[📜wiki]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/wikis/home
[📜wiki-img]: https://img.shields.io/badge/wiki-examples-943CD2.svg?style=for-the-badge&logo=Wiki&logoColor=white
[👽dl-rank]: https://rubygems.org/gems/standard-rubocop-lts
[👽dl-ranki]: https://img.shields.io/gem/rd/standard-rubocop-lts.svg
[👽oss-help]: https://www.codetriage.com/rubocop-lts/standard-rubocop-lts
[👽oss-helpi]: https://www.codetriage.com/rubocop-lts/standard-rubocop-lts/badges/users.svg
[👽version]: https://rubygems.org/gems/standard-rubocop-lts
[👽versioni]: https://img.shields.io/gem/v/standard-rubocop-lts.svg
[🔑cc-mnt]: https://qlty.sh/gh/rubocop-lts/projects/standard-rubocop-lts
[🔑cc-mnti♻️]: https://qlty.sh/badges/4daa5208-3ae5-457c-b601-10de129d17b1/maintainability.svg
[🔑cc-cov]: https://qlty.sh/gh/rubocop-lts/projects/standard-rubocop-lts
[🔑cc-covi♻️]: https://qlty.sh/badges/4daa5208-3ae5-457c-b601-10de129d17b1/test_coverage.svg
[🔑codecov]: https://codecov.io/gh/rubocop-lts/standard-rubocop-lts
[🔑codecovi♻️]: https://codecov.io/gh/rubocop-lts/standard-rubocop-lts/branch/main/graph/badge.svg?token=l44un82aUp
[🔑coveralls]: https://coveralls.io/github/rubocop-lts/standard-rubocop-lts?branch=main
[🔑coveralls-img]: https://coveralls.io/repos/github/rubocop-lts/standard-rubocop-lts/badge.svg?branch=main
[🔑depfu]: https://depfu.com/github/rubocop-lts/standard-rubocop-lts?project_id=60302
[🔑depfui♻️]: https://badges.depfu.com/badges/31479c66ece5143367e8d3d50aef18b5/count.svg
[🖐codeQL]: https://github.com/rubocop-lts/standard-rubocop-lts/security/code-scanning
[🖐codeQL-img]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/codeql-analysis.yml/badge.svg
[🚎1-an-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/ancient.yml
[🚎1-an-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/ancient.yml/badge.svg
[🚎2-cov-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/coverage.yml
[🚎2-cov-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/coverage.yml/badge.svg
[🚎3-hd-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/heads.yml
[🚎3-hd-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/heads.yml/badge.svg
[🚎5-st-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/style.yml
[🚎5-st-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/style.yml/badge.svg
[🚎6-s-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/supported.yml
[🚎6-s-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/supported.yml/badge.svg
[🚎8-df-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/dogfood.yml
[🚎8-df-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/dogfood.yml/badge.svg
[🚎11-c-wf]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/current.yml
[🚎11-c-wfi]: https://github.com/rubocop-lts/standard-rubocop-lts/actions/workflows/current.yml/badge.svg
[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling
[🖇polar-img]: https://polar.sh/embed/seeks-funding-shield.svg?org=pboling
[🖇polar]: https://polar.sh/pboling
[🖇kofi-img]: https://img.shields.io/badge/buy_me_coffee-donate-yellow.svg
[🖇kofi]: https://ko-fi.com/O5O86SNP4
[🖇patreon-img]: https://img.shields.io/badge/patreon-donate-yellow.svg
[🖇patreon]: https://patreon.com/galtzo
[💎ruby-2.7i]: https://img.shields.io/badge/Ruby-2.7-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.0i]: https://img.shields.io/badge/Ruby-3.0-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.1i]: https://img.shields.io/badge/Ruby-3.1-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.2i]: https://img.shields.io/badge/Ruby-3.2-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.3i]: https://img.shields.io/badge/Ruby-3.3-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-c-i]: https://img.shields.io/badge/Ruby-current-CC342D?style=for-the-badge&logo=ruby&logoColor=green
[💎ruby-headi]: https://img.shields.io/badge/Ruby-HEAD-CC342D?style=for-the-badge&logo=ruby&logoColor=blue
[🤝issues]: https://github.com/rubocop-lts/standard-rubocop-lts/issues
[🤝pulls]: https://github.com/rubocop-lts/standard-rubocop-lts/pulls
[🤝contributing]: CONTRIBUTING.md
[🔑codecov-g♻️]: https://codecov.io/gh/rubocop-lts/standard-rubocop-lts/graphs/tree.svg?token=l44un82aUp
[🖐contrib-rocks]: https://contrib.rocks
[🖐contributors]: https://github.com/rubocop-lts/standard-rubocop-lts/graphs/contributors
[🖐contributors-img]: https://contrib.rocks/image?repo=rubocop-lts/standard-rubocop-lts
[🚎contributors-gl]: https://gitlab.com/rubocop-lts/standard-rubocop-lts/-/graphs/main
[🪇conduct]: CODE_OF_CONDUCT.md
[🪇conduct-img]: https://img.shields.io/badge/Contributor_Covenant-2.1-4baaaa.svg
[📌pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[📌semver]: https://semver.org/spec/v2.0.0.html
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📌changelog]: CHANGELOG.md
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/badge/KLOC-0.075-FFDD67.svg?style=for-the-badge&logo=YouTube&logoColor=blue
[🔐security]: SECURITY.md
[🔐security-img]: https://img.shields.io/badge/security-policy-brightgreen.svg?style=flat
[📄copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year
[📄license]: LICENSE.txt
[📄license-ref]: https://opensource.org/licenses/MIT
[📄license-img]: https://img.shields.io/badge/License-MIT-green.svg
[📄ilo-declaration]: https://www.ilo.org/declaration/lang--en/index.htm
[📄ilo-declaration-img]: https://img.shields.io/badge/ILO_Fundamental_Principles-✓-brightgreen.svg?style=flat
[🚎yard-current]: http://rubydoc.info/gems/standard-rubocop-lts
[🚎yard-head]: https://rubydoc.info/github/rubocop-lts/standard-rubocop-lts/main
[🖇buyme-img]: https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20latte&emoji=&slug=pboling&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff
[🖇buyme]: https://www.buymeacoffee.com/pboling
[🖇buyme-small-img]: https://img.shields.io/badge/Buy--Me--A--Coffee-✓-brightgreen.svg?style=flat
