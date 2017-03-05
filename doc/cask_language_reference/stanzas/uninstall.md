# uninstall

IF YOU CANNOT DESIGN A WORKING `UNINSTALL` STANZA, PLEASE SUBMIT YOUR CASK ANYWAY. The maintainers will help you write an `uninstall` stanza, just ask!

## uninstall pkgutil: Is The Easiest and Most Useful

`pkgutil:` is the easiest and most useful `uninstall` directive. See [Uninstall Key pkgutil:](#uninstall-key-pkgutil).

## uninstall Is Required for Casks That Install a pkg or installer manual:

For most Casks, uninstall actions are determined automatically, and an explicit `uninstall` stanza is not needed. However, a Cask which uses the `pkg` or `installer manual:` stanzas will **not** know how to uninstall correctly unless an `uninstall` stanza is given.

So, while the Cask language does not enforce the requirement, it is much better for end-users if every `pkg` and `installer manual:` has a corresponding `uninstall`.

The `uninstall` stanza is available for non-`pkg` Casks, and is useful for a few corner cases. However, the documentation below concerns the typical case of using `uninstall` to define procedures for a `pkg`.

## There Are Multiple Uninstall Techniques

Since `pkg` installers can do arbitrary things, different techniques are needed to uninstall in each case. You may need to specify one, or several, of the following key/value pairs as arguments to `uninstall`.

## Summary of Keys

* `early_script:` (string or hash) - like `script:`, but runs early (for special cases, best avoided)
* `launchctl:` (string or array) - ids of `launchctl` jobs to remove
* `quit:` (string or array) - bundle ids of running applications to quit
* `signal:` (array of arrays) - signal numbers and bundle ids of running applications to send a Unix signal to (used when `quit:` does not work)
* `login_item:` (string or array) - names of login items to remove
* `kext:` (string or array) - bundle ids of kexts to unload from the system
* `pkgutil:` (string, regexp or array of strings and regexps) - strings or regexps matching bundle ids of packages to uninstall using `pkgutil`
* `script:` (string or hash) - relative path to an uninstall script to be run via sudo; use hash if args are needed
  - `executable:` - relative path to an uninstall script to be run via sudo (required for hash form)
  - `args:` - array of arguments to the uninstall script
  - `input:` - array of lines of input to be sent to `stdin` of the script
  - `must_succeed:` - set to `false` if the script is allowed to fail
  - `sudo:` - set to `false` if the script does not need `sudo`
* `delete:` (string or array) - single-quoted, absolute paths of files or directory trees to remove. `delete:` should only be used as a last resort. `pkgutil:` is strongly preferred.
* `rmdir:` (string or array) - single-quoted, absolute paths of directories to remove if empty
* `trash:` (string or array) - currently a synonym for `delete:`. In the future this will cause files to be moved to the Trash.

Each `uninstall` technique is applied according to the order above. The order in which `uninstall` keys appear in the Cask file is ignored.

For assistance filling in the right values for `uninstall` keys, there are several helper scripts found under `developer/bin` in the Homebrew-Cask repository. Each of these scripts responds to the `-help` option with additional documentation.

The easiest way to work out an `uninstall` stanza is on a system where the `pkg` is currently installed and operational. To operate on an uninstalled `pkg` file, see [Working With a pkg File Manually](#working-with-a-pkg-file-manually), below.

## uninstall Key pkgutil:

This is the most useful uninstall key. `pkgutil:` is often sufficient to completely uninstall a `pkg`, and is strongly preferred over `delete:`.

IDs for the most recently-installed packages can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_recent_pkg_ids"
```

`pkgutil:` also accepts a regular expression match against multiple package IDs. The regular expressions are somewhat nonstandard. To test a `pkgutil:` regular expression against currently-installed packages, use the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_pkg_ids_by_regexp" <regular-expression>
```

## List Files Associated With a pkg Id

Once you know the ID for an installed package, (above), you can list all files on your system associated with that package ID using the macOS command:

```bash
$ pkgutil --files <package.id.goes.here>
```

Listing the associated files can help you assess whether the package included any `launchctl` jobs or kernel extensions (kexts).

## uninstall Key launchctl:

IDs for currently loaded `launchctl` jobs can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_loaded_launchjob_ids"
```

IDs for all installed `launchctl` jobs can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_installed_launchjob_ids"
```

## uninstall Key quit:

Bundle IDs for currently running Applications can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_running_app_ids"
```

Bundle IDs inside an Application bundle on disk can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_ids_in_app" '/path/to/application.app'
```

## uninstall Key signal:

`signal:` should only be needed in the rare case that a process does not respond to `quit:`.

Bundle IDs for `signal:` targets may be obtained as for `quit:`. The value for `signal:` is an array-of-arrays, with each cell containing two elements: the desired Unix signal followed by the corresponding bundle ID.

The Unix signal may be given in numeric or string form (see the `kill` man page for more details).

The elements of the `signal:` array are applied in order, only if there is an existing process associated the bundle ID, and stopping when that process terminates. A bundle ID may be repeated to send more than one signal to the same process.

It is better to use the least-severe signals which are sufficient to stop a process. The `KILL` signal in particular can have unwanted side-effects.

An example, with commonly-used signals in ascending order of severity:

```ruby
  uninstall signal: [
                      ['TERM', 'fr.madrau.switchresx.daemon'],
                      ['QUIT', 'fr.madrau.switchresx.daemon'],
                      ['INT',  'fr.madrau.switchresx.daemon'],
                      ['HUP',  'fr.madrau.switchresx.daemon'],
                      ['KILL', 'fr.madrau.switchresx.daemon'],
                    ]
```

Note that when multiple running processes match the given Bundle ID, all matching processes will be signaled.

Unlike `quit:` directives, Unix signals originate from the current user, not from the superuser. This is construed as a safety feature, since the superuser is capable of bringing down the system via signals. However, this inconsistency may also be considered a bug, and should be addressed in some fashion in a future version.

## uninstall key login_item:

Login items associated with an Application bundle on disk can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_login_items_for_app" '/path/to/application.app'
```

Note that you will likely need to have opened the app at least once for any login items to be present.

## uninstall Key kext:

IDs for currently loaded kernel extensions can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_loaded_kext_ids"
```

IDs inside a kext bundle you have located on disk can be listed using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_id_in_kext" '/path/to/name.kext'
```

## uninstall Key script:

`uninstall script:` introduces a series of key-value pairs describing a command which will automate completion of the uninstall. Example (from [gpgtools.rb](https://github.com/caskroom/homebrew-cask/blob/4a0a49d1210a8202cbdd54bce2986f15049b8b61/Casks/gpgtools.rb#L33-#L37)):

```ruby
  uninstall script:    {
                         executable: "#{staged_path}/Uninstall.app/Contents/Resources/GPG Suite Uninstaller.app/Contents/Resources/uninstall.sh",
                         sudo:       true,
                       }
```

It is important to note that, although `script:` in the above example does attempt to completely uninstall the `pkg`, it should not be used in detriment of [`pkgutil:`](#uninstall-key-pkgutil), but as a complement when possible.

## uninstall Key delete:

`delete:` should only be used as a last resort, if other `uninstall` methods are insufficient.

Arguments to `uninstall delete:` should use the following basic rules:

* Only single quotes should be used, except when invoking [`#{version}` interpolation](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/version.md). `ENV['HOME']` and other variables should not be interpolated in the value.
* Basic tilde expansion is performed on paths, i.e., leading `~` is expanded to the home directory.
* Paths must be absolute.
* Glob expansion is performed using the [standard set of characters](https://en.wikipedia.org/wiki/Glob_(programming)).

To remove user-specific files, use the `zap` stanza.

## uninstall Key trash:

*stub* - currently a synonym for `delete:`. In the future this will cause files to be moved to the Trash. It is best not to use this stub until it gains the proper functionality.

## Working With a pkg File Manually

Advanced users may wish to work with a `pkg` file manually, without having the package installed.

A list of files which may be installed from a `pkg` can be extracted using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_payload_in_pkg" '/path/to/my.pkg'
```

Candidate application names helpful for determining the name of a Cask may be extracted from a `pkg` file using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_apps_in_pkg" '/path/to/my.pkg'
```

Candidate package IDs which may be useful in a `pkgutil:` key may be extracted from a `pkg` file using the command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_ids_in_pkg" '/path/to/my.pkg'
```

A fully manual method for finding bundle ids in a package file follows:

1. Unpack `/path/to/my.pkg` (replace with your package name) with `pkgutil --expand /path/to/my.pkg /tmp/expanded.unpkg`.
2. The unpacked package is a folder. Bundle ids are contained within files named `PackageInfo`. These files can be found with the command `find /tmp/expanded.unpkg -name PackageInfo`.
3. `PackageInfo` files are XML files, and bundle ids are found within the `identifier` attributes of `<pkg-info>` tags that look like `<pkg-info ... identifier="com.oracle.jdk7u51" ... >`, where extraneous attributes have been snipped out and replaced with ellipses.
4. Kexts inside packages are also described in `PackageInfo` files. If any kernel extensions are present, the command `find /tmp/expanded.unpkg -name PackageInfo -print0 | xargs -0 grep -i kext` should return a `<bundle id>` tag with a `path` attribute that contains a `.kext` extension, for example `<bundle id="com.wavtap.driver.WavTap" ... path="./WavTap.kext" ... />`.
5. Once bundle ids have been identified, the unpacked package directory can be deleted.
