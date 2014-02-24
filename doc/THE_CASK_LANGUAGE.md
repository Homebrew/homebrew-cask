# The Cask DSL (Domain-Specific Language)

This document acts as a complete reference, and covers aspects of the Cask
DSL which are not needed in most cases.

 * [Stanzas Which May Occur Only Once](#stanzas-which-may-occur-only-once)
 * [Stanzas Which May Occur Multiple Times](#stanzas-which-may-occur-multiple-times)
 * [Conditional Statements](#conditional-statements)
 * [Caveats Stanza Details](#caveats-stanza-details)
 * [Checksum Stanza Details](#checksum-stanza-details)
 * [URL Stanza Details](#url-stanza-details)
 * [Link Stanza Details](#link-stanza-details)
 * [Install Stanza Details](#install-stanza-details)
 * [Uninstall Stanza Details](#uninstall-stanza-details)


## Stanzas Which May Occur Only Once

 * url
 * homepage
 * version
 * sha256 (or no_checksum)


## Stanzas Which May Occur Multiple Times

 * link
 * install
 * prefpane
 * qlplugin
 * font
 * input_method
 * screen_saver
 * binary
 * uninstall
 * nested_container
 * depends_on_formula
 * caveats
 * after_install
 * after_uninstall


## Conditional Statements

Conditional statements are permitted, but only if they are very efficient.
Tests on the following values are known to be acceptable:

 * `MacOS.version`      (example: `macports.rb`)


## Caveats Stanza Details

### Caveats as a String

When `caveats` is a string, it is evaluated at compile time. Use this only for a static
message in which you don't need to interpolate any runtime variables.  Example:

	caveats 'Using this software is hazardous to your health.'

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
| `logout`                          | The user should log out and log back in to complete installation
| `reboot`                          | The user should reboot to complete installation
| `files_in_usr_local`              | The Cask installs files to `/usr/local`, which may confuse Homebrew
| `arch_only(list)`                 | The Cask only supports certain architectures.  Currently valid elements of `list` are `intel-32` and `intel-64`
| `os_version_only(list)`           | The Cask only supports certain OS X Versions.  Currently valid elements of `list` are `10.5`, `10.6`, `10.7`, `10.8`, and `10.9`

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
| `caskroom_path`    | eg `/opt/homebrew-cask/Caskroom`
| `destination_path` | where this particular Cask is stored, including version number, eg `/opt/homebrew-cask/Caskroom/google-chrome/stable-channel`


## Checksum Stanza Details

Older Casks may still use `sha1` checksums.  This is OK, but new
Casks and updates should adopt `sha256`.


## URL Stanza Details

### HTTP URLs

When a plain URL string is insufficient to fetch a file, additional
information may be provided to the `curl`-based downloader, in the form
of key/value pairs appended to `url`:

| key                | value       |
| ------------------ | ----------- |
| `:cookies`         | a hash of cookies to be set in the download request
| `:referer`         | a string holding the URL to set as referrer in the download request
| `:user_agent`      | a string holding the user agent to set for the download request. Can also be set to the symbol `:fake`, which will use a generic Browser-like user agent string. we prefer `:fake` when the server does not require a specific user agent.

Example: `java.rb`

### Subversion URLs

In rare cases, a distribution may not be available over ordinary HTTP.
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

The `:target` key works similarly for other Cask artifacts, such as
`binary`, `colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`,
`service`, and `widget`.


## Install Stanza Details

The first argument to `install` should be a relative path to the `pkg` file
to be installed.  For example:

```ruby
install 'Vagrant.pkg'
```

Subsequent arguments to `install` are key/value pairs which modify the
install process.  Currently supported keys are

  * `:allow_untrusted` -- pass `-allowUntrusted` to `/usr/sbin/installer`

Example:

```ruby
install 'Soundflower.pkg', :allow_untrusted => true
```


## Uninstall Stanza Details

A `pkg`-based Cask using `install` will **not** know how to uninstall
correctly unless an `uninstall` stanza is given.

Since `pkg` installers can do arbitrary things, different techniques are
needed to uninstall in each case.  You may need to specify one, or several,
of the following key/value pairs as arguments to `uninstall`.  `:pkgutil`
is the most useful.

* `:early_script` (string or hash) - like `:script`, but runs early (for special cases, best avoided)
* `:launchctl` (string or array) - ids of `launchctl` jobs to remove
* `:quit` (string or array) - bundle ids of running applications to quit
* `:kext` (string or array) - bundle ids of kexts to unload from the system
* `:pkgutil` (string or regexp) - regexp matching bundle ids of packages to uninstall using `pkgutil`
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

### List Files Associated With a `pkg`

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

# <3 THANK YOU TO ALL CONTRIBUTORS! <3
