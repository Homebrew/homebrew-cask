# Synopsis

## Casks Are Ruby Blocks

Each Cask is a Ruby block, beginning with a special header line. The Cask definition itself is always enclosed in a `do … end` block. Example:

```ruby
cask 'alfred' do
  version '2.7.1_387'
  sha256 'a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end
end
```

## The Cask Language Is Declarative

Each Cask contains a series of stanzas (or “fields”) which *declare* how the software is to be obtained and installed. In a declarative language, the author does not need to worry about **order**. As long as all the needed fields are present, Homebrew-Cask will figure out what needs to be done at install time.

To make maintenance easier, the most-frequently-updated stanzas are usually placed at the top. But that’s a convention, not a rule.

Exception: `do` blocks such as `postflight` may enclose a block of pure Ruby code. Lines within that block follow a procedural (order-dependent) paradigm.

## Conditional Statements

### Efficiency

Conditional statements are permitted, but only if they are very efficient.
Tests on the following values are known to be acceptable:

| value                       | examples
| ----------------------------|--------------------------------------
| `MacOS.version`             | [macports.rb](https://github.com/caskroom/homebrew-cask/blob/9eae0af0daf9b55f81a3af010cca3b0b1272e2db/Casks/macports.rb#L4#L20), [coconutbattery.rb](https://github.com/caskroom/homebrew-cask/blob/2c801af44be29fff7f3cb2996455fce5dd95d1cc/Casks/coconutbattery.rb#L3#L17)

### Version Comparisons

Tests against `MacOS.version` may use either symbolic names or version
strings with numeric comparison operators:

```ruby
if MacOS.version <= :mavericks     # symbolic name
```

```ruby
if MacOS.version <= '10.9'         # version string
```

The available symbols for macOS versions are: `:cheetah`, `:puma`, `:jaguar`, `:panther`, `:tiger`, `:leopard`, `:snow_leopard`, `:lion`, `:mountain_lion`, `:mavericks`, `:yosemite`, `:el_capitan`, and `:sierra`. The corresponding numeric version strings should be given as major releases containing a single dot.

### Always Fall Through to the Newest Case

Conditionals should be constructed so that the default is the newest OS version. When using an `if` statement, test for older versions, and then let the `else` statement hold the latest and greatest. This makes it more likely that the Cask will work without alteration when a new OS is released. Example (from [coconutbattery.rb](https://github.com/caskroom/homebrew-cask/blob/2c801af44be29fff7f3cb2996455fce5dd95d1cc/Casks/coconutbattery.rb)):

```ruby
if MacOS.version <= :tiger
  # ...
elsif MacOS.version <= :snow_leopard
  # ...
else
  # ...
end
```

### Switch Between Languages or Regions

To switch between languages or regions based on the system locale, the `language` stanza should be used.

The `language` stanza can match language codes ([ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) or [ISO 639-2](https://en.wikipedia.org/wiki/ISO_639-2)), [regional identifiers [ISO 3166-1 Alpha 2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)) and script codes ([ISO 15924](https://en.wikipedia.org/wiki/ISO_15924)), or a combination thereof.

The return value of the matching `language` block can be accessed by simply calling `language`.

US English should always be used as the default language:

```ruby
language 'zh', 'CN' do
  'zh_CN'
end

language 'de' do
  'de_DE'
end

language 'en-GB' do
  'en_GB'
end

language 'en', default: true do
  'en_US'
end
```

Note that the following are not the same:


```ruby
language 'en', 'GB' do
  # matches all locales containing 'en' or 'GB'
end

language 'en-GB' do
  # matches only locales containing 'en' and 'GB'
end
```


Example: [Firefox](../../../../blob/master/Casks/firefox.rb).

## Arbitrary Ruby Methods

In the exceptional case that the Cask DSL is insufficient, it is possible to define arbitrary Ruby variables and methods inside the Cask by creating a `Utils` namespace. Example:

```ruby
cask 'myapp' do
  module Utils
    def self.arbitrary_method
      ...
    end
  end

  name 'MyApp'
  version '1.0'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url "https://#{Utils.arbitrary_method}"
  homepage 'https://www.example.com/'
  ...
end
```

This should be used sparingly: any method which is needed by two or more Casks should instead be rolled into the core. Care must also be taken that such methods be very efficient.

Variables and methods should not be defined outside the `Utils` namespace, as they may collide with Homebrew-Cask internals.

## Header Line Details

The first non-comment line in a Cask follows the form:

```ruby
cask '<cask-token>' do
```

[`<cask-token>`](token_reference.md) should match the Cask filename, without the `.rb` extension,
enclosed in single quotes.

The header line is not entirely strict Ruby: no comma is required after the Cask token.

There are currently some arbitrary limitations on Cask tokens which are in the process of being removed. The Travis bot will catch any errors during the transition.


## Stanza order

Having a common order for stanzas makes Casks easier to update and parse. Below is the complete stanza sequence (no Cask will have all stanzas). The empty lines shown here are also important, as they help to visually delineate information.

```
version
sha256

language

url
appcast,
  checkpoint: # shown here as it is required with `appcast`
name
homepage
gpg, key_id: # on same line, since first part is typically small

auto_updates
accessibility_access
conflicts_with
depends_on
container

suite
app
pkg
installer
binary
colorpicker
font
input_method
internet_plugin
prefpane
qlplugin
screen_saver
service
audio_unit_plugin
vst_plugin
vst3_plugin
artifact, target: # :target shown here as is required with `artifact`
stage_only

preflight

postflight

uninstall_preflight

uninstall_postflight

uninstall

zap

caveats
```

Note that every stanza that has additional parameters (`:symbols` after a `,`) shall have them on separate lines, one per line, in alphabetical order. Exceptions are `gpg` and `target:` (when not applied to `url`) which typically consist of short lines.
