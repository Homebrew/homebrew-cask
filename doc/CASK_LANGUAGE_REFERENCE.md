# Cask Language Reference

This document acts as a complete specification, and covers aspects of the
Cask Domain-Specific Language (DSL) which are not needed in most cases.

 * [Casks Are Ruby Blocks](#casks-are-ruby-blocks)
 * [The Cask Language Is Declarative](#the-cask-language-is-declarative)
 * [Required Stanzas](#required-stanzas)
 * [At Least One Artifact Stanza Is Also Required](#at-least-one-artifact-stanza-is-also-required)
 * [Optional Stanzas](#optional-stanzas)
 * [Conditional Statements](#conditional-statements)
 * [Header Line Details](#header-line-details)
 * [Caveats Stanza Details](#caveats-stanza-details)
 * [Checksum Stanza Details](#checksum-stanza-details)
 * [URL Stanza Details](#url-stanza-details)
 * [Appcast Stanza Details](#appcast-stanza-details)
 * [Tags Stanza Details](#tags-stanza-details)
 * [License Stanza Details](#license-stanza-details)
 * [GPG Stanza Details](#gpg-stanza-details)
 * [App Stanza Details](#app-stanza-details)
 * [Suite Stanza Details](#suite-stanza-details)
 * [Pkg Stanza Details](#pkg-stanza-details)
 * [Installer Stanza Details](#installer-stanza-details)
 * [Depends_on Stanza Details](#depends_on-stanza-details)
 * [Conflicts_with Stanza Details](#conflicts_with-stanza-details)
 * [Uninstall Stanza Details](#uninstall-stanza-details)
 * [Zap Stanza Details](#zap-stanza-details)
 * [Arbitrary Ruby Methods](#arbitrary-ruby-methods)
 * [Revisions to the Cask DSL](#revisions-to-the-cask-dsl)


## Casks Are Ruby Blocks

Each Cask is a Ruby block, beginning with a special header line.  The Cask
definition itself is always enclosed in a `do ... end` block.  Example:

```ruby
cask :v1 => 'alfred' do
  version '2.3_264'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url 'https://cachefly.alfredapp.com/Alfred_2.3_264.zip'
  homepage 'http://www.alfredapp.com/'
  license :commercial

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'
end
```

## The Cask Language Is Declarative

Each Cask contains a series of stanzas (or "fields") which *declare* how the
software is to be obtained and installed.  In a declarative language, the
author does not need to worry about **order**.  As long as all the needed fields
are present, homebrew-cask will figure out what needs to be done at install
time.

To make maintenance easier, the most-frequently-updated stanzas are usually
placed at the top.  But that's a convention, not a rule.

Exception: `do` blocks such as `preflight` may enclose a block of pure Ruby
code.  Lines within that block follow a procedural (order-dependent)
paradigm.


## Required Stanzas

Each of the following stanzas is required for every Cask.

| name               | multiple occurrences allowed? | value       |
| ------------------ |------------------------------ | ----------- |
| `version`          | no                            | application version; give value of `:latest`  if versioned downloads are not offered
| `sha256`           | no                            | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`.  Can be suppressed for unversioned downloads by using the special value `:no_check`. (see also [Checksum Stanza Details](#checksum-stanza-details))
| `url`              | no                            | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application (see also [URL Stanza Details](#url-stanza-details))
| `homepage`         | no                            | application homepage; used for the `brew cask home` command
| `license`          | no                            | a symbol identifying the license category for the application. (see also [License Stanza Details](#license-stanza-details))


## At Least One Artifact Stanza Is Also Required

Each Cask must declare one or more *artifacts* (i.e. something to install)

| name               | multiple occurrences allowed? | value       |
| ------------------ |------------------------------ | ----------- |
| `app`              | yes                           | relative path to an `.app` that should be linked into the `~/Applications` folder on installation (see also [App Stanza Details](#app-stanza-details))
| `pkg`              | yes                           | relative path to a `.pkg` file containing the distribution (see also [Pkg Stanza Details](#pkg-stanza-details))
| `binary`           | yes                           | relative path to a binary that should be linked into the `/usr/local/bin` folder on installation
| `colorpicker`      | yes                           | relative path to a ColorPicker plugin that should be linked into the `~/Library/ColorPickers` folder on installation
| `font`             | yes                           | relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `input_method`     | yes                           | relative path to a input method that should be linked into the `~/Library/Input Methods` folder on installation
| `internet_plugin`  | yes                           | relative path to a service that should be linked into the `~/Library/Internet Plug-Ins` folder on installation
| `prefpane`         | yes                           | relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `qlplugin`         | yes                           | relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `screen_saver`     | yes                           | relative path to a Screen Saver that should be linked into the `~/Library/Screen Savers` folder on installation
| `service`          | yes                           | relative path to a service that should be linked into the `~/Library/Services` folder on installation
| `widget`           | yes                           | relative path to a widget that should be linked into the `~/Library/Widgets` folder on installation (ALPHA: DOES NOT WORK YET)
| `suite`            | yes                           | relative path to a containing directory that should be linked into the `~/Applications` folder on installation (see also [Suite Stanza Details](#suite-stanza-details))
| `artifact`         | yes                           | relative path to an arbitrary path that should be symlinked on installation.  This is only for unusual cases.  The `app` stanza is strongly preferred when linking `.app` bundles.
| `installer`        | yes                           | describes an executable which must be run to complete the installation.  (see [Installer Stanza Details](#installer-stanza-details))

## Optional Stanzas

| name                   | multiple occurrences allowed? | value       |
| ---------------------- |------------------------------ | ----------- |
| `uninstall`            | yes                           | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see also [Uninstall Stanza Details](#uninstall-stanza-details))
| `zap`                  | yes                           | additional procedures for a more complete uninstall, including user files and shared resources. (see also [Zap Stanza Details](#zap-stanza-details))
| `appcast`              | no                            | a URL providing an appcast feed to find updates for this Cask.  (see also [Appcast Stanza Details](#appcast-stanza-details))
| `depends_on`           | yes                           | a list of dependencies required by this Cask (see also [Depends_on Stanza Details](#depends_on-stanza-details))
| `conflicts_with`       | yes                           | a list of conflicts with this Cask (*not yet functional* see also [Conflicts_with Stanza Details](#conflicts_with-stanza-details))
| `caveats`              | yes                           | a string or Ruby block providing the user with Cask-specific information at install time (see also [Caveats Stanza Details](#caveats-stanza-details))
| `preflight`            | yes                           | a Ruby block containing preflight install operations (needed only in very rare cases)
| `postflight`           | yes                           | a Ruby block containing postflight install operations
| `uninstall_preflight`  | yes                           | a Ruby block containing preflight uninstall operations (needed only in very rare cases)
| `uninstall_postflight` | yes                           | a Ruby block containing postflight uninstall operations
| `container :nested =>` | no                            | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `container :type =>`   | no                            | a symbol to override container-type autodetect. may be one of: `:air`, `:bz2`, `:cab`, `:dmg`, `:generic_unar`, `:gzip`, `:otf`, `:pkg`, `:rar`, `:seven_zip`, `:sit`, `:tar`, `:ttf`, `:xar`, `:zip`, `:naked`.  (example [parse.rb](../Casks/parse.rb))
| `tags`                 | no                            | a list of key-value pairs for Cask annotation.  Not free-form.  (see also [Tags Stanza Details](#tags-stanza-details))
| `gpg`                  | no                            | *stub: not yet functional.*  (see also [GPG Stanza Details](#gpg-stanza-details))
| `stage_only`           | no                            | `true`.  Assert that the Cask contains no activatable artifacts.


## Conditional Statements

### Efficiency

Conditional statements are permitted, but only if they are very efficient.
Tests on the following values are known to be acceptable:

| value                       | examples
| ----------------------------|--------------------------------------
| `MacOS.version`             | [macports.rb](../Casks/macports.rb), [coconutbattery.rb](../Casks/coconutbattery.rb)
| `Hardware::CPU.is_32_bit?`  | [vuescan.rb](../Casks/vuescan.rb)
| `Hardware::CPU.is_64_bit?`  | none, see [Always Fall Through to the Newest Case](#always-fall-through-to-the-newest-case)

### Version Comparisons

Tests against `MacOS.version` may use either symbolic names or version
strings with numeric comparison operators:

```ruby
if MacOS.version < :mavericks     # symbolic name
```

```ruby
if MacOS.version < '10.9'         # version string
```

The available symbols for OS versions are: `:tiger`, `:leopard`,
`:snow_leopard`, `:lion`, `:mountain_lion`, `:mavericks`, and `:yosemite`.

### Always Fall Through to the Newest Case

Conditionals should be constructed so that the default is the newest OS
version or hardware type.  When using an `if` statement, test for older
versions, and then let the `else` statement hold the latest and greatest.
This makes it more likely that the Cask will work without alteration when
a new OS is released.  Example (from [coconutbattery.rb](../Casks/coconutbattery.rb)):

```ruby
if MacOS.version < :leopard
  # ...
elsif MacOS.version < :lion
  # ...
else
  # ...
end
```

## Header Line Details

The first non-comment line in a Cask follows the form

```ruby
cask <dsl-version> => '<cask-name>' do
```

`<dsl-version>` identifies the version of the Cask DSL, currently `:v1`.

`<cask-name>` should match the Cask filename, without the `.rb` extension,
enclosed in single quotes.

The header line is not entirely strict Ruby: no comma is required after
the Cask name.

There are currently some arbitrary limitations on Cask names which are
in the process of being removed.  The Travis bot will catch any errors
during the transition.


## Caveats Stanza Details

### Caveats as a String

When `caveats` is a string, it is evaluated at compile time.  The following
methods are available for interpolation if `caveats` is placed in its customary
position at the end of the Cask:

| method             | description |
| ------------------ | ----------- |
| `title`            | the Cask title
| `version`          | the Cask version
| `homepage`         | the Cask homepage
| `caskroom_path`    | the containing directory for all staged Casks, typically `/opt/homebrew-cask/Caskroom`
| `staged_path`      | the staged location for this Cask, including version number, *eg* `/opt/homebrew-cask/Caskroom/adium/1.5.10`

Example:

```ruby
caveats "Using #{title} is hazardous to your health."
```

### Caveats as a Block

When `caveats` is a Ruby block, evaluation is deferred until install time.
Within a block you may refer to the `@cask` instance variable, and invoke
any method available on `@cask`.

### Caveats Mini-DSL

There is a mini-DSL available within `caveats` blocks.

The following methods may be called to generate standard warning messages:

| method                            | description |
| --------------------------------- | ----------- |
| `path_environment_variable(path)` | users should make sure `path` is in their `$PATH` environment variable
| `zsh_path_helper(path)`           | zsh users must take additional steps to make sure `path` is in their `$PATH` environment variable
| `logout`                          | users should log out and log back in to complete installation
| `reboot`                          | users should reboot to complete installation
| `assistive_devices`               | users should grant the application access to assistive devices
| `files_in_usr_local`              | the Cask installs files to `/usr/local`, which may confuse Homebrew
| `arch_only(list)`                 | the Cask only supports certain architectures.  Currently valid elements of `list` are `intel-32` and `intel-64`
| `os_version_only(list)`           | the Cask only supports certain OS X Versions.  Currently valid elements of `list` are all major releases: `10.0`, `10.1`, … `10.10`
| `x11_required`                    | the Cask requires X11 to run

Example:

```ruby
caveats do
  path_environment_variable '/usr/texbin'
end
```


## Checksum Stanza Details

Casks should no longer use `no_checksum` stanzas.  That form has
been superseded by `sha256 :no_check`.


## URL Stanza Details

### HTTPS URLs are Preferred

If available, an HTTPS URL is preferred. A plain HTTP URL should only be used in the absence of a secure alternative.

### Additional HTTP/S URL Parameters

When a plain URL string is insufficient to fetch a file, additional
information may be provided to the `curl`-based downloader, in the form
of key/value pairs appended to `url`:

| key                | value       |
| ------------------ | ----------- |
| `:using`           | the symbol `:post` is the only legal value
| `:cookies`         | a hash of cookies to be set in the download request
| `:referer`         | a string holding the URL to set as referrer in the download request
| `:user_agent`      | a string holding the user agent to set for the download request. Can also be set to the symbol `:fake`, which will use a generic Browser-like user agent string. we prefer `:fake` when the server does not require a specific user agent.
| `:data`            | a hash of parameters to be set in the POST request

Example of using `:cookies`: [java.rb](../Casks/java.rb)

Example of using `:referer`: [rrootage.rb](../Casks/rrootage.rb)

### Difficulty Finding a URL

Web browsers may obscure the direct `url` download location for a variety of
reasons.  Homebrew-cask supplies a script which can read extended file
attributes to extract the actual source URL for most files downloaded by a
browser on OS X.  The script usually emits multiple candidate URLs; you may
have to test each of them:

```bash
$ ./developer/bin/list_url_attributes_on_file <file>
```

### Subversion URLs

In rare cases, a distribution may not be available over ordinary HTTP/S.
Subversion URLs are also supported, and can be specified by appending the
following key/value pairs to `url`:

| key                | value       |
| ------------------ | ----------- |
| `:using`           | the symbol `:svn` is the only legal value
| `:revision`        | a string identifying the subversion revision to download
| `:trust_cert`      | set to `true` to automatically trust the certificate presented by the server (avoiding an interactive prompt)


## Appcast Stanza Details

The value of the `appcast` stanza is a string, holding the URL for an
appcast which provides information on future updates.  Generally, the
appcast URL returns Sparkle-compatible XML, though that is not required.

Example: [adium.rb](../../d7f8eafa4fc01a6c383925d9962b5da33876a8b6/Casks/adium.rb#L6)

### Additional Appcast Parameters

| key                | value       |
| ------------------ | ----------- |
| `:sha256`          | a string holding the SHA-256 checksum of the most recent appcast which matches the current Cask versioning
| `:format`          | a symbol describing the appcast format.  One of: `:sparkle`, `:plaintext`, `:unknown`, where `:sparkle` is the default.


## License Stanza Details

The `license` stanza is not free-form.  A single value must be chosen from a
list of valid symbols.

The values for `license` are categories, rather than fully-specified
licenses.  For example, `:gpl` is a category; we do not distinguish between
versions of the GPL.  Similarly, `:cc` and `:bsd` comprise many variants.

The `license` stanza is intended as an aid to search/filtering of Casks.
For full and complete information, the user must always rely on the vendor's
homepage.

Note that `brew cask search` and `brew cask list` are not yet capable of
using the information stored in the `license` stanza.

### Generic Category Licenses

Cask authors should use the most specific license category which is also
correct.  Generic categories are provided for difficult cases.  `:unknown`
is also perfectly fine if you are unsure.

Example: [Chromium](http://www.chromium.org/chromium-os/licenses) includes code with multiple licenses, all of which are
open source.  Chromium licensing is described by the generic category [`:oss`](https://github.com/caskroom/homebrew-cask/blob/54a79f7dcceea9a922a5b608ac99466b9d10a191/Casks/chromium.rb#L7).

| symbol      | meaning     |
| ----------- | ----------- |
| `:oss`      | open-source software
| `:closed`   | closed-source software
| `:unknown`  | license unknown
| `:other`    | license is known, but fits no category

### Valid Licenses

| symbol           | generic category | meaning                                         | URL         |
| ---------------- | ---------------- | ----------------------------------------------- | ----------- |
| `:gratis`        | `:closed`        | free-to-use, closed source                      | <none>
| `:commercial`    | `:closed`        | not free to use                                 | <none>
| `:affero`        | `:oss`           | Affero General Public License                   | <https://gnu.org/licenses/agpl.html>
| `:apache`        | `:oss`           | Apache Public License                           | <http://www.apache.org/licenses/>
| `:arphic`        | `:oss`           | Arphic Public License                           | <http://www.arphic.com/tw/download/public_license.rar>
| `:artistic`      | `:oss`           | Artistic License                                | <http://dev.perl.org/licenses/artistic.html>
| `:bsd`           | `:oss`           | BSD License                                     | <http://www.linfo.org/bsdlicense.html>
| `:cc`            | `:oss`           | Creative Commons License                        | <http://creativecommons.org/licenses/>
| `:eclipse`       | `:oss`           | Eclipse Public License                          | <https://www.eclipse.org/legal/eplfaq.php>
| `:gpl`           | `:oss`           | GNU Public License                              | <http://www.gnu.org/copyleft/gpl.html>
| `:isc`           | `:oss`           | Internet Systems Consortium License             | <http://www.isc.org/downloads/software-support-policy/isc-license/>
| `:lppl`          | `:oss`           | LaTeX Project Public License                    | <http://latex-project.org/lppl/>
| `:ncsa`          | `:oss`           | University of Illinois/NCSA Open Source License | <http://otm.illinois.edu/uiuc_openSource>
| `:mit`           | `:oss`           | MIT License                                     | <http://opensource.org/licenses/MIT>
| `:mpl`           | `:oss`           | Mozilla Public License                          | <https://www.mozilla.org/MPL/>
| `:ofl`           | `:oss`           | SIL Open Font License                           | <http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL>
| `:public_domain` | `:oss`           | not copyrighted                                 | <http://creativecommons.org/publicdomain/zero/1.0/legalcode>
| `:ubuntu_font`   | `:oss`           | Ubuntu Font License                             | <http://font.ubuntu.com/licence/>
| `:x11`           | `:oss`           | X Consortium License                            | <http://www.xfree86.org/3.3.6/COPYRIGHT2.html>


## Tags Stanza Details

The `tags` stanza is not free-form.  The key-value pairs are limited to a list
of valid keys.  All `tags` keys accept string values.

The `tags` stanza is intended as an aid to search/filtering of Casks.  For
detailed information, the user must rely on the vendor's homepage.

Note that `brew cask search` and `brew cask list` are not yet capable of
using the information stored in the `tags` stanza.

### Valid Tag Keys

| key           | meaning
| ------------- | -----------------------------
| `:name`       | alternate name for the Cask. (example [smlnj.rb](../Casks/smlnj.rb))
| `:vendor`     | the full-text official name of the producer of the software: an author or corporate name, as appropriate.  As the value is intended as a search target, commonly shared abbreviations such as `Dr.` or `Inc.` should be omitted. (example [google-chrome.rb](../Casks/google-chrome.rb))


## GPG Stanza Details

**This is a stub for upcoming functionality, and is not fully documented**.

The `gpg` stanza contains signature information for GPG-signed distributions.
The form is

```ruby
gpg <signature>, <parameter> => <value>
```

where `<parameter>` is one of `:key_id` or `:key_url`, and `<signature>` points
to the detached signature of the distribution.  Commonly, the signature
follows the `url` value.  Example: [libreoffice.rb](../Casks/libreoffice.rb).


## App Stanza Details

In the simple case of a string argument to `app`, a symlink is created in
the target `~/Applications` directory using the same basename as the source
file.  For example:

```ruby
app 'Alfred 2.app'
```

causes the creation of this symlink

```bash
~/Applications/Alfred 2.app
```

which points to a source file such as

```bash
/opt/homebrew-cask/Caskroom/alfred/2.1.1_227/Alfred 2.app
```

### Renaming the Target

You can rename the target link which appears in your `~/Applications`
directory by adding a `:target` key to `app`. Example (from [scala-ide.rb](../Casks/scala-ide.rb):

```ruby
app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
```

### :target May Contain an Absolute Path

If `:target` has a leading slash, it is interpreted as an absolute path.
The containing directory for the absolute path will be created if it does
not already exist.  Example (from [manopen.rb](../Casks/manopen.rb)):

```ruby
artifact 'openman.1', :target => '/usr/local/share/man/man1/openman.1'
```

### :target Works on Most Artifact Types

The `:target` key works similarly for most Cask artifacts, such as
`app`, `binary`, `colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`,
`service`, `widget`, `suite`, and `artifact`.

### :target Should Only Be Used in Select Cases

Don’t use `:target` for aesthetic reasons, like removing version numbers
(`app "Slack #{version}.app", :target => 'Slack.app'`). With `app`, use it
when it makes sense functionally and document your reason cleary in the Cask:
was it [for clarity](../Casks/imagemin.rb); [for consistency](../Casks/devonthink-pro-office.rb);
[to prevent conflicts](../Casks/flash-player-debugger.rb)? With `binary` you can
take some extra liberties to be consistent with other command-line tools,
like [changing case](../Casks/diffmerge.rb) or [removing an extension](../Casks/filebot.rb).


## Suite Stanza Details

Some distributions provide a suite of multiple applications, or an
application with required data, to be installed together in a
subdirectory of `~/Applications`.

For these Casks, use the `suite` stanza to define the directory
containing the application suite.  Example (from [sketchup.rb](../Casks/sketchup.rb)):

```ruby
suite 'SketchUp 2015'
```

The value of `suite` is never an `.app` bundle, but a plain directory.


## Pkg Stanza Details

The first argument to the `pkg` stanza should be a relative path to the `.pkg`
file to be installed.  For example:

```ruby
pkg 'Unity.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install
process.  Currently supported keys are

  * `:allow_untrusted` -- pass `-allowUntrusted` to `/usr/sbin/installer`

Example:

```ruby
pkg 'Soundflower.pkg', :allow_untrusted => true
```


## Installer Stanza Details

The `installer` stanza takes a series of key-value pairs, the first key of
which must be `:manual` or `:script`.

### Installer :manual

`installer :manual` takes a single string value, describing a GUI installer
which must be run by the user at a later time.  The path may be absolute,
or relative to the Cask.  Example:

```ruby
installer :manual => 'Little Snitch Installer.app'
```
### Installer :script

`installer :script` introduces a series of key-value pairs describing
a command which will automate completion of the install.  The form is
similar to `uninstall :script`:

| key             | value
| ----------------|------------------------------
| `:script`       | path to an install script to be run via `sudo`. (Required first key.)
| `:args`         | array of arguments to the install script
| `:input`        | array of lines of input to be sent to `stdin` of the script
| `:must_succeed` | set to `false` if the script is allowed to fail
| `:sudo`         | set to `false` if the script does not need `sudo`

The path may be absolute, or relative to the Cask.  Example:

```ruby
installer :script => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
          :args => %w[-silent]
```

## Depends_on Stanza Details

`depends_on` is used to declare dependencies required to install a Cask
or to execute its contents.

For example, some distributions are contained in archive formats such as
`7z` which are not supported by stock Apple tools.  For these cases, a more
capable archive reader may be pulled in at install time by declaring a
dependency on the Homebrew Formula `unar`:

```ruby
depends_on :formula => 'unar'
```

While several keys are accepted by `depends_on`, `:formula` is the only
key with working functionality at the time of writing.

| key        | description |
| ---------- | ----------- |
| `:formula` | a Homebrew Formula
| `:cask`    | *stub - not yet functional*
| `:macos`   | *stub - not yet functional*
| `:arch`    | *stub - not yet functional*
| `:x11`     | *stub - not yet functional*
| `:java`    | *stub - not yet functional*


## conflicts_with Stanza Details

`conflicts_with` is used to declare conflicts that keep a Cask from
installing or working correctly.

Several keys are accepted by `conflicts_with`, but none of them are yet
enforced by the backend implementation.  It is fine to proactively add
`conflicts_with` stanzas to Casks in anticipation of future backend support;
they are currently just a type of structured comment.

| key        | description |
| ---------- | ----------- |
| `:formula` | *stub - not yet functional*
| `:cask`    | *stub - not yet functional*
| `:macos`   | *stub - not yet functional*
| `:arch`    | *stub - not yet functional*
| `:x11`     | *stub - not yet functional*
| `:java`    | *stub - not yet functional*


## Uninstall Stanza Details

IF YOU CANNOT DESIGN A WORKING `UNINSTALL` STANZA, PLEASE SUBMIT YOUR
CASK ANYWAY.  The maintainers will help you write an `uninstall` stanza:
just ask!

### `uninstall :pkgutil` Is The Easiest and Most Useful

`:pkgutil` is the easiest and most useful `uninstall` directive.  See
[Uninstall Key :pkgutil](#uninstall-key-pkgutil).

### `uninstall` Is Required for Casks That Install a `pkg`

For most Casks, uninstall actions are determined automatically, and an
explicit `uninstall` stanza is not needed.  However, a Cask which uses
the `pkg` stanza will **not** know how to uninstall correctly unless an
`uninstall` stanza is given.

So, while the Cask language does not enforce the requirement, it is much
better for end-users if every `pkg` has a corresponding `uninstall`.

The `uninstall` stanza is available for non-`pkg` Casks, and is useful for
a few corner cases.  However, the documentation below concerns the typical
case of using `uninstall` to define procedures for a `pkg`.

### There Are Multiple Uninstall Techniques

Since `pkg` installers can do arbitrary things, different techniques are
needed to uninstall in each case.  You may need to specify one, or several,
of the following key/value pairs as arguments to `uninstall`.

### Summary of Keys

* `:early_script` (string or hash) - like `:script`, but runs early (for special cases, best avoided)
* `:launchctl` (string or array) - ids of `launchctl` jobs to remove
* `:quit` (string or array) - bundle ids of running applications to quit
* `:signal` (array of arrays) - signal numbers and bundle ids of running applications to send a Unix signal to (used when `:quit` does not work)
* `:kext` (string or array) - bundle ids of kexts to unload from the system
* `:pkgutil` (string, regexp or array of strings and regexps) - strings or regexps matching bundle ids of packages to uninstall using `pkgutil`
* `:script` (string or hash) - relative path to an uninstall script to be run via sudo; use hash if args are needed
  - `:executable` - relative path to an uninstall script to be run via sudo (required for hash form)
  - `:args` - array of arguments to the uninstall script
  - `:input` - array of lines of input to be sent to `stdin` of the script
  - `:must_succeed` - set to `false` if the script is allowed to fail
* `:delete` (string or array) - single-quoted, absolute paths of files or directory trees to remove.  `:delete` should only be used as a last resort. `:pkgutil` is strongly preferred
* `:rmdir` (string or array) - single-quoted, absolute paths of directories to remove if empty.
* `:trash` (string or array) - currently a synonym for `:delete`.  In the future this will cause files to be moved to the Trash.

Each `uninstall` technique is applied according to the order above. The order
in which `uninstall` keys appear in the Cask file is ignored.

For assistance filling in the right values for `uninstall` keys, there are
several helper scripts found under `developer/bin` in the homebrew-cask
repository.  Each of these scripts responds to the `-help` option with
additional documentation.

The easiest way to work out an `uninstall` stanza is on a system where the
`pkg` is currently installed and operational.  To operate on an uninstalled
`pkg` file, see [Working With a pkg File Manually](#working-with-a-pkg-file-manually), below.

### Uninstall Key :pkgutil

This is the most useful uninstall key.  `:pkgutil` is often sufficient
to completely uninstall a `pkg`, and is strongly preferred over `:delete`.

IDs for the most recently-installed packages can be listed using the
command
```bash
$ ./developer/bin/list_recent_pkg_ids
```

`:pkgutil` also accepts a regular expression match against multiple package
IDs.  The regular expressions are somewhat nonstandard.  To test a `:pkgutil`
regular expression against currently-installed packages, use the command

```bash
$ ./developer/bin/list_pkg_ids_by_regexp <regular-expression>
```

### List Files Associated With a `pkg` Id

Once you know the ID for an installed package, (above), you can list
all files on your system associated with that package ID using the
OS X command
```bash
$ pkgutil --files <package.id.goes.here>
```
Listing the associated files can help you assess whether the package
included any launchctl jobs or kernel extensions (kexts).

### Uninstall Key :launchctl

IDs for currently loaded launchctl jobs can be listed using the command
```bash
$ ./developer/bin/list_loaded_launchjob_ids
```

IDs for all installed launchctl jobs can be listed using the command
```bash
$ ./developer/bin/list_installed_launchjob_ids
```

### Uninstall Key :quit

Bundle IDs for currently running Applications can be listed using the command
```bash
$ ./developer/bin/list_running_app_ids
```

Bundle IDs inside an Application bundle on disk can be listed using the command
```bash
$ ./developer/bin/list_ids_in_app </path/to/application.app>
```

### Uninstall Key :signal

`:signal` should only be needed in the rare case that a process does not
respond to `:quit`.

Bundle IDs for `:signal` targets may be obtained as for `:quit`.  The value
for `:signal` is an array-of-arrays, with each cell containing two elements:
the desired Unix signal followed by the corresponding bundle ID.

The Unix signal may be given in numeric or string form (see the `kill`
man page for more details).

The elements of the `:signal` array are applied in order, only if there is
an existing process associated the bundle ID, and stopping when that process
terminates.  A bundle ID may be repeated to send more than one signal to the
same process.

It is better to use the least-severe signals which are sufficient to stop
a process.  The `KILL` signal in particular can have unwanted side-effects.

An example, with commonly-used signals in ascending order of severity:

```ruby
  uninstall :signal => [
                        ['TERM', 'fr.madrau.switchresx.daemon'],
                        ['QUIT', 'fr.madrau.switchresx.daemon'],
                        ['INT',  'fr.madrau.switchresx.daemon'],
                        ['HUP',  'fr.madrau.switchresx.daemon'],
                        ['KILL', 'fr.madrau.switchresx.daemon'],
                       ]
```

Note that when multiple running processes match the given Bundle ID, all
matching processes will be signaled.

Unlike `:quit` directives, Unix signals originate from the current user, not
from the superuser.  This is construed as a safety feature, since the
superuser is capable of bringing down the system via signals.  However, this
inconsistency may also be considered a bug, and should be addressed in some
fashion in a future version.

### Uninstall Key :kext

IDs for currently loaded kernel extensions can be listed using the command
```bash
$ ./developer/bin/list_loaded_kext_ids
```

IDs inside a kext bundle you have located on disk can be listed using the command
```bash
$ ./developer/bin/list_id_in_kext </path/to/name.kext>
```

### Uninstall Key :delete

`:delete` should only be used as a last resort, if other `uninstall` methods
are insufficient.

Arguments to `uninstall :delete` should be static, single-quoted, absolute
paths.

 * Only single quotes should be used.
 * Double-quotes should not be used.  `ENV['HOME']` and other variables
   should not be interpolated in the value.
 * Only absolute paths should be given.
 * No tilde expansion is performed (`~` characters are literal).
 * No glob expansion is performed (*eg* `*` characters are literal), though
   glob expansion is a desired future feature.

To remove user-specific files, use the `zap` stanza.


### Uninstall Key :trash

*stub* - currently a synonym for `:delete`.  In the future this will cause
files to be moved to the Trash.  It is best not to use this stub until it
gains the proper functionality.


### Working With a pkg File Manually

Advanced users may wish to work with a `pkg` file manually, without having the
package installed.

A list of files which may be installed from a `pkg` can be extracted using the
command
```bash
$ ./developer/bin/list_payload_in_pkg </path/to/my.pkg>
```

Candidate application names helpful for determining the name of a Cask may be
extracted from a `pkg` file using the command
```bash
$ ./developer/bin/list_apps_in_pkg </path/to/my.pkg>
```

Candidate package IDs which may be useful in a `:pkgutil` key may be
extracted from a `pkg` file using the command
```bash
$ ./developer/bin/list_ids_in_pkg </path/to/my.pkg>
```

A fully manual method for finding bundle ids in a package file follows:

  1. Unpack `/path/to/my.pkg` (replace with your package name) with `pkgutil --expand /path/to/my.pkg /tmp/expanded.unpkg`.
  2. The unpacked package is a folder. Bundle ids are contained within files named `PackageInfo`. These files can be found
     with the command `find /tmp/expanded.unpkg -name PackageInfo`.
  3. `PackageInfo` files are XML files, and bundle ids are found within the `identifier` attributes of `<pkg-info>` tags that look like
     `<pkg-info ... identifier="com.oracle.jdk7u51" ... >`, where extraneous attributes have been snipped out and replaced with ellipses.
  4. Kexts inside packages are also described in `PackageInfo` files.  If any kernel extensions are present, the command
     `find /tmp/expanded.unpkg -name PackageInfo -print0 | xargs -0 grep -i kext` should return a `<bundle id>` tag with a `path`
     attribute that contains a `.kext` extension, for example `<bundle id="com.wavtap.driver.WavTap" ... path="./WavTap.kext" ... />`.
  5. Once bundle ids have been identified, the unpacked package directory can be deleted.


## Zap Stanza Details

### Zap Stanza Purpose

The `zap` stanza describes a more complete uninstallation of resources
associated with a Cask.  The `zap` procedures will never be performed
by default, but only if the user invokes the `zap` verb:

```bash
$ brew cask zap td-toolbelt             # also removes org.ruby-lang.installer
```

`zap` stanzas may remove:

 * Preference files and caches stored within the user's `~/Library` directory.
 * Shared resources such as application updaters.  Since shared resources
   may be removed, other applications may be affected by `brew cask zap`.
   Understanding that is the responsibility of the end user.

`zap` stanzas should not remove:

 * Files created by the user directly.


### Zap Stanza Syntax

The form of `zap` stanza follows the [`uninstall` stanza](#uninstall-stanza-details).
All of the same directives are available.

`zap` differs from `uninstall` in the following ways:
 * The use of `:delete` is not discouraged.
 * The target values for `:delete` and `:rmdir` accept leading tilde characters
   (`~`), which will be expanded to home directories.

Example: [injection.rb](../Casks/injection.rb)


## Arbitrary Ruby Methods

In the exceptional case that the Cask DSL is insufficient, it is possible to
define arbitrary Ruby variables and methods inside the Cask by creating a
`Utils` namespace.  Example:

```ruby
cask :v1 => 'appname' do
  module Utils
    def self.arbitrary_method
      ...
    end
  end

  version '1.0'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'
  license :unknown

  url "https://#{Utils.arbitrary_method}"
  homepage 'http://www.example.com/'
  ...
end
```

This should be used sparingly: any method which is needed by two or more
Casks should instead be rolled into the core.  Care must also be taken
that such methods be very efficient.

Variables and methods should not be defined outside the `Utils` namespace,
as they may collide with Homebrew-cask internals.


## Revisions to the Cask DSL

The Cask DSL is being revised and stabilized.  Changes are tracked in [cask_language_deltas.md](cask_language_deltas.md).

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
