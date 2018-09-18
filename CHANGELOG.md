# ChangeLog

Here's an overview of notable changes to this program.  
For more technical details, try [`tig`](https://jonas.github.io/tig/).

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Nothing yet. Maybe open an issue?

## [0.1.1] - 2018-09-18

No functionality change.

### Added
- [CHANGELOG.md] (this file)

### Changed
- [LICENSE] file renamed from MIT-LICENSE to comply with code hosting platforms.

## 0.1.0 - 2018-09-18

### Added
- Initial release: `ActiveRecord::FixIntegerLimit` is a module to pass `limit`
  of 8 (bytes) to the constructor of `ActiveRecord::Type::UnsignedInteger`,
  applying the yet unused API of `ActiveModel::Type:Integer` to bypass the
  `DEFAULT_LIMIT` of 4 bytes than can make tests break without any good reason.  
  An alternative is to use the [activerecord-suppress_range_error] gem that
  simply does what it says, leaving the (remote) possibility of an actual (and
  undetected) overflow. Not sure my patch is better, but _it works for me_™.

[CHANGELOG.md]: ./CHANGELOG.md
[LICENSE]: ./LICENSE
[Unreleased]: compare/v0.1.0...HEAD
[0.1.1]: compare/v0.1.0..v0.1.1
[activerecord-suppress_range_error]: https://github.com/kamipo/activerecord-suppress_range_error
