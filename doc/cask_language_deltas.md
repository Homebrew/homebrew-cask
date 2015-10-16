# Cask Language Deltas

This document summarizes revisions to the Cask Domain-Specific Language (DSL).

* [Cask DSL 1.0](#cask-dsl-10)
* [References](#references)

## Cask DSL 1.0

These are deltas from the pre-existing (unversioned) conventions to the Cask DSL 1.0 specification.

* [Header Line (1.0)](#header-line-10)
* [New Forms (1.0)](#new-forms-10)
* [Renamed Forms (1.0)](#renamed-forms-10)
* [All Supported Stanzas (1.0)](#all-supported-stanzas-10)
* [Other Supported Non-stanza Methods (1.0)](#other-supported-non-stanza-methods-10)
* [Caveats Mini-DSL (1.0)](#caveats-mini-dsl-10)


## Header Line (1.0)

The header line was changed from the form

```ruby
class MyApp < Cask
```

to

```ruby
cask :v1 => 'my-app' do
```

Legacy rules for mapping Cask filenames to header class names are no longer needed. The token `'my-app'` in the header corresponds directly to the filename `my-app.rb`.

The term `:v1` identifies the DSL version (currently 1.0), and defines the features which are available for the current Cask.

## New Forms

###(1.0)

* [`appcast`](CASK_LANGUAGE_REFERENCE.md#appcast-stanza-details)
* [`artifact`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`depends_on :cask`](CASK_LANGUAGE_REFERENCE.md#depends_on-stanza-details)
* [`depends_on :java`](CASK_LANGUAGE_REFERENCE.md#depends_on-stanza-details) (*stub* - not yet functional)
* [`conflicts_with`](CASK_LANGUAGE_REFERENCE.md#conflicts_with-stanza-details) (*stub* - not yet functional)
* [`gpg`](CASK_LANGUAGE_REFERENCE.md#gpg-stanza-details) (*stub - not yet functional.*)
* [`installer :script`](CASK_LANGUAGE_REFERENCE.md#installer-script)
* [`license`](CASK_LANGUAGE_REFERENCE.md#license-stanza-details)
* [`name`](CASK_LANGUAGE_REFERENCE.md#name-stanza-details)
* [`*flight plist_set`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)
* [`postflight suppress_move_to_applications`](CASK_LANGUAGE_REFERENCE.md#flight-stanza-details)
* [`stage_only`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required) (replaced undocumented `caskroom_only`)
* [`suite`](CASK_LANGUAGE_REFERENCE.md#suite-stanza-details)
* [`tags`](CASK_LANGUAGE_REFERENCE.md#tags-stanza-details)
* [`uninstall :rmdir`](CASK_LANGUAGE_REFERENCE.md#uninstall-stanza-details)
* [`uninstall :trash`](CASK_LANGUAGE_REFERENCE.md#uninstall-key-trash) (*stub* - currently just a synonym for `uninstall :delete`)
* [`zap`](CASK_LANGUAGE_REFERENCE.md#zap-stanza-details)

### (1.1)

* [`*flight set_ownership`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)
* [`*flight set_permissions`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)

## Renamed Forms (1.0)

| old form                                | new form
| --------------------------------------- |----------------
| `after_install`                         | [`postflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `after_uninstall`                       | [`uninstall_postflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `arch_only` (within `caveats`)          | [`depends_on :arch`](CASK_LANGUAGE_REFERENCE.md#depends_on-arch)
| `assistive_devices` (within `caveats`)  | [`accessibility_access`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `before_install`                        | [`preflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `before_uninstall`                      | [`uninstall_preflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `container_type`                        | [`container :type`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `depends_on_formula`                    | [`depends_on :formula`](CASK_LANGUAGE_REFERENCE.md#depends_on-formula)
| `destination_path`                      | [`staged_path`](CASK_LANGUAGE_REFERENCE.md#caveats-as-a-string)
| `install`                               | [`pkg`](CASK_LANGUAGE_REFERENCE.md#pkg-stanza-details)
| `link`                                  | [`app`](CASK_LANGUAGE_REFERENCE.md#app-stanza-details) (or sometimes `suite` or `artifact`)
| `manual_installer` (within `caveats`)   | [`installer :manual`](CASK_LANGUAGE_REFERENCE.md#installer-manual)
| `nested_container`                      | [`container :nested =>`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
| `os_version_only` (within `caveats`)    | [`depends_on :macos`](CASK_LANGUAGE_REFERENCE.md#depends_on-macos)
| `title` (in interpolations)             | [`token`](CASK_LANGUAGE_REFERENCE.md#caveats-as-a-string)
| `uninstall :files`                      | [`uninstall :delete`](CASK_LANGUAGE_REFERENCE.md#uninstall-key-delete)
| `version 'latest'`                      | [`version :latest`](CASK_LANGUAGE_REFERENCE.md#required-stanzas)
| `x11_required` (within `caveats`)       | [`depends_on :x11`](CASK_LANGUAGE_REFERENCE.md#all-depends_on-keys)

## All Supported Stanzas (1.0)

* [`app`](CASK_LANGUAGE_REFERENCE.md#app-stanza-details)
* [`appcast`](CASK_LANGUAGE_REFERENCE.md#appcast-stanza-details)
* [`artifact`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`binary`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`caveats`](CASK_LANGUAGE_REFERENCE.md#caveats-stanza-details)
* [`colorpicker`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`conflicts_with`](CASK_LANGUAGE_REFERENCE.md#conflicts_with-stanza-details)
* [`container`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`depends_on`](CASK_LANGUAGE_REFERENCE.md#depends_on-stanza-details)
* [`font`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`gpg`](CASK_LANGUAGE_REFERENCE.md#gpg-stanza-details) *stub: not yet functional.*
* [`homepage`](CASK_LANGUAGE_REFERENCE.md#required-stanzas)
* [`input_method`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`installer`](CASK_LANGUAGE_REFERENCE.md#installer-stanza-details)
* [`internet_plugin`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`license`](CASK_LANGUAGE_REFERENCE.md#license-stanza-details)
* [`pkg`](CASK_LANGUAGE_REFERENCE.md#pkg-stanza-details)
* [`postflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`preflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`prefpane`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`qlplugin`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`screen_saver`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`service`](CASK_LANGUAGE_REFERENCE.md#at-least-one-artifact-stanza-is-also-required)
* [`sha256`](CASK_LANGUAGE_REFERENCE.md#checksum-stanza-details)
* [`stage_only`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`suite`](CASK_LANGUAGE_REFERENCE.md#suite-stanza-details)
* [`tags`](CASK_LANGUAGE_REFERENCE.md#tags-stanza-details)
* [`uninstall_postflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`uninstall_preflight`](CASK_LANGUAGE_REFERENCE.md#optional-stanzas)
* [`uninstall`](CASK_LANGUAGE_REFERENCE.md#uninstall-stanza-details)
* [`url`](CASK_LANGUAGE_REFERENCE.md#url-stanza-details)
* [`version`](CASK_LANGUAGE_REFERENCE.md#required-stanzas)
* [`zap`](CASK_LANGUAGE_REFERENCE.md#zap-stanza-details)

## Other Supported Non-stanza Methods (1.0)

For use in *eg* interpolation:

* [`caskroom_path`](CASK_LANGUAGE_REFERENCE.md#caveats-as-a-string)
* [`staged_path`](CASK_LANGUAGE_REFERENCE.md#caveats-as-a-string)
* [`token`](CASK_LANGUAGE_REFERENCE.md#caveats-as-a-string)

## Caveats Mini-DSL

### (1.0)

* [`files_in_usr_local`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)
* [`logout`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)
* [`path_environment_variable(path)`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)
* [`reboot`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)
* [`zsh_path_helper(path)`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)

### (1.1)

* [`discontinued`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)
* [`free_license(web_page)`](CASK_LANGUAGE_REFERENCE.md#caveats-mini-dsl)

## \*flight Mini-DSL (1.0)

### (1.0)

* [`plist_set`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)
* [`suppress_move_to_applications`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)

### (1.1)

* [`set_ownership`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)
* [`set_permissions`](CASK_LANGUAGE_REFERENCE.md#flight-stanzas-details)

## References

* [DSL 1.0 transition notice](https://github.com/caskroom/homebrew-cask/issues/5890)
* [DSL 1.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/4688)
* [DSL 1.1 roadmap](https://github.com/caskroom/homebrew-cask/issues/5586)
* [DSL 2.0 roadmap](https://github.com/caskroom/homebrew-cask/issues/5592)
* [`brew cask upgrade` roadmap](https://github.com/caskroom/homebrew-cask/issues/4678)
* [Full specification](CASK_LANGUAGE_REFERENCE.md)

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
