# All stanzas

## Required Stanzas

Each of the following stanzas is required for every Cask.

| name               | multiple occurrences allowed? | value       |
| ------------------ |------------------------------ | ----------- |
| `version`          | no                            | application version; give value of `:latest`  if versioned downloads are not offered (see also [Version Stanza Details](stanzas/version.md))
| `sha256`           | no                            | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check` (see also [Checksum Stanza Details](stanzas/sha256.md))
| `url`              | no                            | URL to the `.dmg`/`.zip`/`.tgz`/`.tbz2` file that contains the application.<br />A [comment](stanzas/url.md#when-url-and-homepage-hostnames-differ-add-a-comment) should be added if the hostnames in the `url` and `homepage` stanzas differ. Block syntax should be used for URLs that change on every visit.<br />See [URL Stanza Details](stanzas/url.md) for more information.
| `name`             | yes                           | a string providing the full and proper name defined by the vendor (see also [Name Stanza Details](stanzas/name.md))
| `homepage`         | no                            | application homepage; used for the `brew cask home` command

## At Least One Artifact Stanza Is Also Required

Each Cask must declare one or more *artifacts* (i.e. something to install).

| name               | multiple occurrences allowed? | value       |
| ------------------ |------------------------------ | ----------- |
| `app`              | yes                           | relative path to an `.app` that should be moved into the `/Applications` folder on installation (see also [App Stanza Details](stanzas/app.md))
| `pkg`              | yes                           | relative path to a `.pkg` file containing the distribution (see also [Pkg Stanza Details](stanzas/pkg.md))
| `binary`           | yes                           | relative path to a Binary that should be linked into the `$(brew --prefix)/bin` folder (typically `/usr/local/bin`) on installation (see also [Binary Stanza Details](stanzas/binary.md))
| `colorpicker`      | yes                           | relative path to a ColorPicker plugin that should be moved into the `~/Library/ColorPickers` folder on installation
| `dictionary`       | yes                           | relative path to a Dictionary that should be moved into the `~/Library/Dictionaries` folder on installation
| `font`             | yes                           | relative path to a Font that should be moved into the `~/Library/Fonts` folder on installation
| `input_method`     | yes                           | relative path to a Input Method that should be moved into the `~/Library/Input Methods` folder on installation
| `internet_plugin`  | yes                           | relative path to a Service that should be moved into the `~/Library/Internet Plug-Ins` folder on installation
| `manpage`          | yes                           | relative path to a Man Page that should be linked into the respective man page folder on installation, e.g. `/usr/local/share/man/man3` for `my_app.3`
| `prefpane`         | yes                           | relative path to a Preference Pane that should be moved into the `~/Library/PreferencePanes` folder on installation
| `qlplugin`         | yes                           | relative path to a QuickLook Plugin that should be moved into the `~/Library/QuickLook` folder on installation
| `screen_saver`     | yes                           | relative path to a Screen Saver that should be moved into the `~/Library/Screen Savers` folder on installation
| `service`          | yes                           | relative path to a Service that should be moved into the `~/Library/Services` folder on installation
| `audio_unit_plugin`| yes                           | relative path to an Audio Unit plugin that should be moved into the `~/Library/Audio/Components` folder on installation
| `vst_plugin`       | yes                           | relative path to a VST Plugin that should be moved into the `~/Library/Audio/VST` folder on installation
| `vst3_plugin`      | yes                           | relative path to a VST3 Plugin that should be moved into the `~/Library/Audio/VST3` folder on installation
| `suite`            | yes                           | relative path to a containing directory that should be moved into the `/Applications` folder on installation (see also [Suite Stanza Details](stanzas/suite.md))
| `artifact`         | yes                           | relative path to an arbitrary path that should be moved on installation. Must provide an absolute path as a `target` (example [alcatraz.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alcatraz.rb#L12)). This is only for unusual cases. The `app` stanza is strongly preferred when moving `.app` bundles.
| `installer`        | yes                           | describes an executable which must be run to complete the installation (see [Installer Stanza Details](stanzas/installer.md))
| `stage_only`       | no                            | `true`. Assert that the Cask contains no activatable artifacts.

## Optional Stanzas

| name                   | multiple occurrences allowed? | value       |
| ---------------------- |------------------------------ | ----------- |
| `uninstall`            | yes                           | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see also [Uninstall Stanza Details](stanzas/uninstall.md))
| `zap`                  | yes                           | additional procedures for a more complete uninstall, including user files and shared resources (see also [Zap Stanza Details](stanzas/zap.md))
| `appcast`              | no                            | a URL providing an appcast feed to find updates for this Cask (see also [Appcast Stanza Details](stanzas/appcast.md))
| `depends_on`           | yes                           | a list of dependencies and requirements for this Cask (see also [Depends_on Stanza Details](stanzas/depends_on.md))
| `conflicts_with`       | yes                           | a list of conflicts with this Cask (*not yet functional* see also [Conflicts_with Stanza Details](stanzas/conflicts_with.md))
| `caveats`              | yes                           | a string or Ruby block providing the user with Cask-specific information at install time (see also [Caveats Stanza Details](stanzas/caveats.md))
| `preflight`            | yes                           | a Ruby block containing preflight install operations (needed only in very rare cases)
| `postflight`           | yes                           | a Ruby block containing postflight install operations (see also [Postflight Stanza Details](stanzas/flight.md))
| `uninstall_preflight`  | yes                           | a Ruby block containing preflight uninstall operations (needed only in very rare cases)
| `uninstall_postflight` | yes                           | a Ruby block containing postflight uninstall operations
| `language`             | required                      | a Ruby block, called with language code parameters, containing other stanzas and/or a return value (see also [Language Stanza Details](stanzas/language.md))
| `container nested:`    | no                            | relative path to an inner container that must be extracted before moving on with the installation; this allows us to support dmg inside tar, zip inside dmg, etc.
| `container type:`      | no                            | a symbol to override container-type autodetect. May be one of: `:air`, `:bz2`, `:cab`, `:dmg`, `:generic_unar`, `:gzip`, `:otf`, `:pkg`, `:rar`, `:seven_zip`, `:sit`, `:tar`, `:ttf`, `:xar`, `:zip`, `:naked`. (example [parse.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/parse.rb#L11))
| `auto_updates`         | no                            | `true`. Assert the Cask artifacts auto-update. Use if `Check for Updates…` or similar is present in app menu, but not if it only opens a webpage and does not do the download and installation for you.
