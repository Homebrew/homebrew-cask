# Cask Language Deltas

This document summarizes revisions to the Cask Domain-Specific Language (DSL).

 * [Cask DSL 1.0](#cask-dsl-10)
 * [References](#references)


## Cask DSL 1.0

These are deltas from the pre-existing (unversioned) conventions to the
Cask DSL 1.0 specification.

 * [This Document Is Incomplete](#this-document-is-incomplete)
 * [Removals (1.0)](#removals-10)
 * [Additions (1.0)](#additions-10)
 * [Renames (1.0)](#renames-10)
 * [All Supported Stanzas (1.0)](#all-supported-stanzas-10)


## This Document Is Incomplete

**This document still being written.  It is not yet a complete reference.
This notice will be removed for the final form.**


## Removals (1.0)

**Stub!**


## Additions (1.0)

 * `depends_on :cask`
   * stub - not yet functional
 * `depends_on :macos`
   * stub - not yet functional
 * `depends_on :arch`
   * stub - not yet functional
 * `depends_on :x11`
   * stub - not yet functional
 * `depends_on :java`
   * stub - not yet functional
 * `zap`


## Renames (1.0)

| old form              | new form
| --------------------- |----------------
| `before_install`      | `preflight`
| `after_install`       | `postflight`
| `before_uninstall`    | `uninstall_preflight`
| `after_uninstall`     | `uninstall_postflight`
| `depends_on_formula`  | `depends_on :formula`

## All Supported Stanzas (1.0)

**Stub!**


## References

 * [DSL 1.0 transition notice](https://github.com/caskroom/homebrew-cask/issues/5890)
 * [DSL 1.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/4688)
 * [DSL 1.1 roadmap](https://github.com/caskroom/homebrew-cask/issues/5586)
 * [DSL 2.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/5592)
 * [`brew cask upgrade` roadmap](https://github.com/caskroom/homebrew-cask/issues/4678)
 * [Full specification](CASK_LANGUAGE_REFERENCE.md)

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
