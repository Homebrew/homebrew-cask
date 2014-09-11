# Cask Language Reference

This document acts as a complete specification, and covers aspects of the
Cask Domain-Specific Language (DSL) which are not needed in most cases.

 * [Casks Are Ruby Classes](#casks-are-ruby-classes)
 * [The Cask Language Is Declarative](#the-cask-language-is-declarative)
 * [Required Stanzas](#required-stanzas)
 * [At Least One Artifact Stanza Is Also Required](#at-least-one-artifact-stanza-is-also-required)
 * [Optional Stanzas](#optional-stanzas)
 * [Legacy Stanzas](#legacy-stanzas)
 * [Conditional Statements](#conditional-statements)
 * [Caveats Stanza Details](#caveats-stanza-details)
 * [Checksum Stanza Details](#checksum-stanza-details)
 * [URL Stanza Details](#url-stanza-details)
 * [Link Stanza Details](#link-stanza-details)
 * [Pkg Stanza Details](#pkg-stanza-details)
 * [Uninstall Stanza Details](#uninstall-stanza-details)
 * [Arbitrary Ruby Methods](#arbitrary-ruby-methods)
 * [Revisions to the Cask DSL](#revisions-to-the-cask-dsl)


## Casks Are Ruby Classes

Each Cask is a Ruby class, derived from class `Cask`.  The Cask definition
is always enclosed in a `class ... end` block.  Example:

```ruby
class Alfred < Cask
  version '2.3_264'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url 'https://cachefly.alfredapp.com/Alfred_2.3_264.zip'
  homepage 'http://www.alfredapp.com/'

  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'
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
| `url`              | No                            | URL to the `.dmg`/`.zip`/`.tgz` file that contains the application (see also [URL Stanza Details](#url-stanza-details))
| `homepage`         | No                            | application homepage; used for the `brew cask home` command
| `version`          | No                            | application version; give value of `'latest'` if versioned downloads are not offered
| `sha256`           | No                            | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`.  Can be suppressed for unversioned downloads by using the special value `:no_check`. (see also [Checksum Stanza Details](#checksum-stanza-details))


## At Least One Artifact Stanza Is Also Required

Each Cask must declare one or more *artifacts* (i.e. something to install)

| name               | multiple occurrences allowed? | value       |
| ------------------ |------------------------------ | ----------- |
| `link`             | yes                           |  relative path to a file that should be linked into the `Applications` folder on installation (see also [Link Stanza Details](#link-stanza-details))
| `pkg`              | yes                           |  relative path to a `.pkg` file containing the distribution (see also [Pkg Stanza Details](#pkg-stanza-details))
| `binary`           | yes                           |  relative path to a binary that should be linked into the `/usr/local/bin` folder on installation
| `colorpicker`      | yes                           |  relative path to a ColorPicker plugin that should be linked into the `~/Library/ColorPickers` folder on installation
| `font`             | yes                           |  relative path to a font that should be linked into the `~/Library/Fonts` folder on installation
| `input_method`     | yes                           |  relative path to a input method that should be linked into the `~/Library/Input Methods` folder on installation
| `internet_plugin`  | yes                           |  relative path to a service that should be linked into the `~/Library/Internet Plug-Ins` folder on installation
| `prefpane`         | yes                           |  relative path to a preference pane that should be linked into the `~/Library/PreferencePanes` folder on installation
| `qlplugin`         | yes                           |  relative path to a QuickLook plugin that should be linked into the `~/Library/QuickLook` folder on installation
| `screen_saver`     | yes                           |  relative path to a Screen Saver that should be linked into the `~/Library/Screen Savers` folder on installation
| `service`          | yes                           |  relative path to a service that should be linked into the `~/Library/Services` folder on installation
| `widget`           | yes                           |  relative path to a widget that should be linked into the `~/Library/Widgets` folder on installation (ALPHA: DOES NOT WORK YET)


## Optional Stanzas

| name                   | multiple occurrences allowed? | value       |
| ---------------------- |------------------------------ | ----------- |
| `uninstall`            | yes                           | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see also [Uninstall Stanza Details](#uninstall-stanza-details))
| `nested_container`     | yes                           | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `depends_on_formula`   | yes                           | a list of Homebrew Formulae upon which this Cask depends
| `caveats`              | yes                           | a string or Ruby block providing the user with Cask-specific information at install time (see also [Caveats Stanza Details](#caveats-stanza-details))
| `preflight`            | yes                           | a Ruby block containing preflight install operations (needed only in very rare cases)
| `postflight`           | yes                           | a Ruby block containing postflight install operations
| `uninstall_preflight`  | yes                           | a Ruby block containing preflight uninstall operations (needed only in very rare cases)
| `uninstall_postflight` | yes                           | a Ruby block containing postflight uninstall operations
| `container_type`       | no                            | a symbol to override container-type autodetect. may be one of: `:air`, `:bz2`, `:cab`, `:dmg`, `:generic_unar`, `:gzip`, `:otf`, `:pkg`, `:rar`, `:seven_zip`, `:sit`, `:tar`, `:ttf`, `:xar`, `:zip`, `:naked`


## Legacy Stanzas

The following stanzas are no longer in use.

| name                | multiple occurrences allowed? | meaning     |
| ------------------- |------------------------------ | ----------- |
| `no_checksum`       | no                            | an obsolete alternative to `sha256 :no_check`
| `before_install`    | yes                           | an obsolete alternative to `preflight`
| `after_install`     | yes                           | an obsolete alternative to `postflight`
| `before_uninstall`  | yes                           | an obsolete alternative to `uninstall_preflight`
| `after_uninstall`   | yes                           | an obsolete alternative to `uninstall_postflight`
| `install`           | yes                           | an obsolete alternative to `pkg`


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

## Caveats Stanza Details

### Caveats as a String

When `caveats` is a string, it is evaluated at compile time. Use this only for a static
message in which you don't need to interpolate any runtime variables.  Example:

```ruby
caveats 'Using this software is hazardous to your health.'
```

### Caveats as a Block

When `caveats` is a Ruby block, evaluation is deferred until install time. Here you may
refer to the Cask instance in your message to the user:

```ruby
caveats do
  puts "Using #{@cask} is hazardous to your health."
end
```

### Caveats Mini-DSL

There is a mini-DSL available within `caveats` blocks.

The following methods may be called to generate standard warning messages:

| method                            | description |
| --------------------------------- | ----------- |
| `manual_installer(path)`          | The user should execute an installer to complete the installation. `path` may be absolute, or relative to the Cask.
| `path_environment_variable(path)` | The user should make sure `path` is in their `$PATH` environment variable
| `zsh_path_helper(path)`           | Zsh users must take additional steps to make sure `path` is in their `$PATH` environment variable
| `logout`                          | The user should log out and log back in to complete installation
| `reboot`                          | The user should reboot to complete installation
| `assistive_devices`               | The user should grant the application access to assitive devices
| `files_in_usr_local`              | The Cask installs files to `/usr/local`, which may confuse Homebrew
| `arch_only(list)`                 | The Cask only supports certain architectures.  Currently valid elements of `list` are `intel-32` and `intel-64`
| `os_version_only(list)`           | The Cask only supports certain OS X Versions.  Currently valid elements of `list` are `10.5`, `10.6`, `10.7`, `10.8`, `10.9`, and `10.10`
| `x11_required`                    | The Cask requires X11 to run

Example:

```ruby
caveats do
  manual_installer 'Little Snitch Installer.app'
end
```

And the following methods may be useful for interpolation:

| method             | description |
| ------------------ | ----------- |
| `title`            | the Cask title
| `version`          | the Cask version
| `caskroom_path`    | eg `/opt/homebrew-cask/Caskroom`
| `destination_path` | where this particular Cask is stored, including version number, eg `/opt/homebrew-cask/Caskroom/google-chrome/stable-channel`

Any method from the main Cask DSL can be invoked from inside `caveats` via
the `@cask` instance variable.  Example (see [sts.rb](../Casks/sts.rb)):

```ruby
caveats do
  puts "You must obtain an API key at #{@cask.homepage}"
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

Example of using `:referer`: [freefilesync.rb](../Casks/freefilesync.rb)

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


## Link Stanza Details

In the simple case of a string argument to `link`, a symlink is created in
the target `~/Applications` directory using the same basename as the source
file.  For example:

```ruby
link 'Alfred 2.app'
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
directory by adding a `:target` key to `link`, like this:

```ruby
link 'Alfred 2.app', :target => 'Jeeves.app'
```

### :target May Contain an Absolute Path

If `:target` has a leading slash, it is interpreted as an absolute path.
The containing directory for the absolute path will be created if it does
not already exist.  Example (from [oclint.rb](../Casks/oclint.rb)).


```ruby
binary 'oclint-0.7-x86_64-apple-darwin-10/lib/oclint', :target => '/usr/local/lib/oclint'
```

### :target Works on Most Artifact Types

The `:target` key works similarly for other Cask artifacts, such as
`binary`, `colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`,
`service`, and `widget`.


## Pkg Stanza Details

The first argument to the `pkg` stanza should be a relative path to the `.pkg`
file to be installed.  For example:

```ruby
pkg 'Vagrant.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install
process.  Currently supported keys are

  * `:allow_untrusted` -- pass `-allowUntrusted` to `/usr/sbin/installer`

Example:

```ruby
pkg 'Soundflower.pkg', :allow_untrusted => true
```


## Uninstall Stanza Details

IF YOU CANNOT DESIGN A WORKING `UNINSTALL` STANZA, PLEASE SUBMIT YOUR
CASK ANYWAY.  The maintainers will help you write an `uninstall` stanza:
just ask!

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

Since `pkg` installers can do arbitrary things, different techniques are
needed to uninstall in each case.  You may need to specify one, or several,
of the following key/value pairs as arguments to `uninstall`.  `:pkgutil`
is the most useful.

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
* `:files` (array) - absolute paths of files or directories to remove.  `:files` should only be used as a last resort. `:pkgutil` is strongly preferred

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

This is the most important and useful uninstall key.  `:pkgutil` is
often sufficient to completely uninstall a `pkg`.

IDs for the most recently-installed packages can be listed using the
command
```bash
$ ./developer/bin/list_recent_pkg_ids
```

`:pkgutil` also accepts a regular expression to match multiple package
IDs.  To test a regular expression against currently-installed packages,
use the command
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


## Arbitrary Ruby Methods

In the exceptional case that the Cask DSL is insufficient, it is possible to
define arbitrary Ruby methods inside the Cask by creating a `Utils` namespace.
Example:

```ruby
class Appname < Cask
  Module Utils
    def self.arbitrary_method
      ...
    end
  end

  version '1.0'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url "https://#{Utils.arbitrary_method}"
  homepage 'http://www.example.com/'
  ...
end
```

This should be used sparingly: any method which is needed by two or more
Casks should instead be rolled into the core.  Care must also be taken
that such methods be very efficient.


## Revisions to the Cask DSL

The Cask DSL is being revised and stabilized.  Changes are tracked in [cask_language_deltas.md](cask_language_deltas.md).

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
