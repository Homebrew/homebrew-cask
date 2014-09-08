# Cask Language Delta 1.0

This document lists changes to the Cask language from the pre-existing
(unversioned) conventions to the Cask DSL 1.0 standard.

 * [Name Changes](#name-changes)
 * [References](#references)

## Name Changes

| old stanza name     | new stanza name
| --------------------|---------
| `before_install`    | `preflight`
| `after_install`     | `postflight`
| `before_uninstall`  | `uninstall_preflight`
| `after_uninstall`   | `uninstall_postflight`

## References

 * [DSL 1.0 Transition Notice](https://github.com/caskroom/homebrew-cask/issues/5890)
 * [DSL 1.0 Roadmap](https://github.com/caskroom/homebrew-cask/issues/4688)
 * [DSL 1.1 Roadmap](https://github.com/caskroom/homebrew-cask/issues/5586)
 * [DSL 2.0 Roadmap](https://github.com/caskroom/homebrew-cask/issues/5592)
 * [`brew cask upgrade` Roadmap](https://github.com/caskroom/homebrew-cask/issues/4678)

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
