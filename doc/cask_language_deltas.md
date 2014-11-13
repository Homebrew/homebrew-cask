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
 * [Header Line (1.0)](#header-line-10)
 * [All Supported Stanzas (1.0)](#all-supported-stanzas-10)


## This Document Is Incomplete

**This document still being written.  It is not yet a complete reference.
This notice will be removed for the final form.**


## Removals (1.0)

**Stub!**


## Additions (1.0)

 * `appcast`
 * `artifact`
 * `depends_on :cask`
   * *stub* - not yet functional
 * `depends_on :macos`
   * *stub* - not yet functional
 * `depends_on :arch`
   * *stub* - not yet functional
 * `depends_on :x11`
   * *stub* - not yet functional
 * `depends_on :java`
   * *stub* - not yet functional
 * `conflicts_with`
   * *stub* - not yet functional
 * `gpg`
 * `installer :script`
 * `license`
 * `suite`
 * `tags`
 * `uninstall :rmdir`
 * `uninstall :trash`
   * *stub* - currently just a synonym for `uninstall :delete`
 * `zap`


## Renames (1.0)

| old form                                    | new form
| ------------------------------------------- |----------------
| `after_install`                             | `postflight`
| `after_uninstall`                           | `uninstall_postflight`
| `before_install`                            | `preflight`
| `before_uninstall`                          | `uninstall_preflight`
| `container_type`                            | `container :type`
| `depends_on_formula`                        | `depends_on :formula`
| `install`                                   | `pkg`
| `link`                                      | `app` (or sometimes `suite` or `artifact`)
| `nested_container`                          | `container :nested =>`
| `uninstall :files`                          | `uninstall :delete`
| `version 'latest'`                          | `version :latest`
| `manual_installer(path)` (within `caveats`) | `installer :manual`


## All Supported Stanzas (1.0)

**Stub!**


## Header Line (1.0)

The header line was changed from the form

```ruby
class MyApp < Cask
```

to

```ruby
cask :v1 => 'my-app' do
```

Legacy rules for mapping Cask filenames to header class names are no longer
needed.  The name `'my-app'` in the header corresponds directly to the
filename `my-app.rb`.

The term `:v1` identifies the DSL version (currently 1.0), and defines the
features which are available for the current Cask.


## References

 * [DSL 1.0 transition notice](https://github.com/caskroom/homebrew-cask/issues/5890)
 * [DSL 1.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/4688)
 * [DSL 1.1 roadmap](https://github.com/caskroom/homebrew-cask/issues/5586)
 * [DSL 2.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/5592)
 * [`brew cask upgrade` roadmap](https://github.com/caskroom/homebrew-cask/issues/4678)
 * [Full specification](CASK_LANGUAGE_REFERENCE.md)

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
