# All stanzas

## Required Stanzas

Each of the following stanzas is required for every Cask.

| name       | multiple occurrences allowed? | value                           |
| ---------- |------------------------------ | ------------------------------- |
| `version`  | no                            | Application version; set the value to `:latest` if versioned downloads are not offered.<br />See [Version Stanza Details](stanzas/version.md) for more information.
| `sha256`   | no                            | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check`.<br />See [Checksum Stanza Details](stanzas/sha256.md) for more information.
| `url`      | no                            | URL to the `.dmg`/`.zip`/`.tgz`/`.tbz2` file that contains the application.<br />A [comment](stanzas/url.md#when-url-and-homepage-hostnames-differ-add-a-comment) should be added if the hostnames in the `url` and `homepage` stanzas differ. Block syntax should be used for URLs that change on every visit.<br />See [URL Stanza Details](stanzas/url.md) for more information.
| `name`     | yes                           | String providing the full and proper name defined by the vendor.<br />See [Name Stanza Details](stanzas/name.md) for more information.
| `desc`     | no                            | One-line description of the Cask. Shows when running `brew cask info`.<br />See [Desc Stanza Details](stanzas/desc.md) for more information.
| `homepage` | no                            | Application homepage; used for the `brew cask home` command.

## At Least One Artifact Stanza Is Also Required

Each Cask must declare one or more *artifacts* (i.e. something to install).

| name                | multiple occurrences allowed? | value                  |
| ------------------- |------------------------------ | ---------------------- |
| `app`               | yes                           | Relative path to an `.app` that should be moved into the `/Applications` folder on installation.<br />See [App Stanza Details](stanzas/app.md) for more information.
| `pkg`               | yes                           | Relative path to a `.pkg` file containing the distribution.<br />See [Pkg Stanza Details](stanzas/pkg.md) for more information.
| `binary`            | yes                           | Relative path to a Binary that should be linked into the `$(brew --prefix)/bin` folder (typically `/usr/local/bin`) on installation.<br />See [Binary Stanza Details](stanzas/binary.md) for more information.
| `colorpicker`       | yes                           | Relative path to a ColorPicker plugin that should be moved into the `~/Library/ColorPickers` folder on installation.
| `dictionary`        | yes                           | Relative path to a Dictionary that should be moved into the `~/Library/Dictionaries` folder on installation.
| `font`              | yes                           | Relative path to a Font that should be moved into the `~/Library/Fonts` folder on installation.
| `input_method`      | yes                           | Relative path to a Input Method that should be moved into the `~/Library/Input Methods` folder on installation.
| `internet_plugin`   | yes                           | Relative path to a Service that should be moved into the `~/Library/Internet Plug-Ins` folder on installation.
| `manpage`           | yes                           | Relative path to a Man Page that should be linked into the respective man page folder on installation, e.g. `/usr/local/share/man/man3` for `my_app.3`.
| `prefpane`          | yes                           | Relative path to a Preference Pane that should be moved into the `~/Library/PreferencePanes` folder on installation.
| `qlplugin`          | yes                           | Relative path to a QuickLook Plugin that should be moved into the `~/Library/QuickLook` folder on installation.
| `mdimporter`        | yes                           | Relative path to a Spotlight metadata importer that should be moved into the `~/Library/Spotlight` folder on installation.
| `screen_saver`      | yes                           | Relative path to a Screen Saver that should be moved into the `~/Library/Screen Savers` folder on installation.
| `service`           | yes                           | Relative path to a Service that should be moved into the `~/Library/Services` folder on installation.
| `audio_unit_plugin` | yes                           | Relative path to an Audio Unit plugin that should be moved into the `~/Library/Audio/Components` folder on installation.
| `vst_plugin`        | yes                           | Relative path to a VST Plugin that should be moved into the `~/Library/Audio/VST` folder on installation.
| `vst3_plugin`       | yes                           | Relative path to a VST3 Plugin that should be moved into the `~/Library/Audio/VST3` folder on installation.
| `suite`             | yes                           | Relative path to a containing directory that should be moved into the `/Applications` folder on installation.<br />See [Suite Stanza Details](stanzas/suite.md) for more information.
| `artifact`          | yes                           | Relative path to an arbitrary path that should be moved on installation. Must provide an absolute path as a `target` (example [alcatraz.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alcatraz.rb#L12)). This is only for unusual cases. The `app` stanza is strongly preferred when moving `.app` bundles.
| `installer`         | yes                           | Describes an executable which must be run to complete the installation.<br />See [Installer Stanza Details](stanzas/installer.md) for more information.
| `stage_only`        | no                            | `true`. Assert that the Cask contains no activatable artifacts.

## Optional Stanzas

| name                   | multiple occurrences allowed? | value               |
| ---------------------- |------------------------------ | ------------------- |
| `uninstall`            | yes                           | Procedures to uninstall a Cask. Optional unless the `pkg` stanza is used.<br />See [Uninstall Stanza Details](stanzas/uninstall.md) for more information.
| `zap`                  | yes                           | Additional procedures for a more complete uninstall, including user files and shared resources.<br />See [Zap Stanza Details](stanzas/zap.md) for more information.
| `appcast`              | no                            | URL providing an appcast feed to find updates for this Cask.<br />See [Appcast Stanza Details](stanzas/appcast.md) for more information.
| `depends_on`           | yes                           | List of dependencies and requirements for this Cask.<br />See [Depends_on Stanza Details](stanzas/depends_on.md) for more information.
| `conflicts_with`       | yes                           | List of conflicts with this Cask (*not yet functional*).<br />See [Conflicts_with Stanza Details](stanzas/conflicts_with.md) for more information.
| `caveats`              | yes                           | String or Ruby block providing the user with Cask-specific information at install time.<br />See [Caveats Stanza Details](stanzas/caveats.md) for more information.
| `preflight`            | yes                           | Ruby block containing preflight install operations (needed only in very rare cases).
| `postflight`           | yes                           | Ruby block containing postflight install operations.<br />See [Postflight Stanza Details](stanzas/flight.md) for more information.
| `uninstall_preflight`  | yes                           | Ruby block containing preflight uninstall operations (needed only in very rare cases).
| `uninstall_postflight` | yes                           | Ruby block containing postflight uninstall operations.
| `language`             | required                      | Ruby block, called with language code parameters, containing other stanzas and/or a return value.<br />See [Language Stanza Details](stanzas/language.md) for more information.
| `container nested:`    | no                            | Relative path to an inner container that must be extracted before moving on with the installation. This allows us to support dmg inside tar, zip inside dmg, etc.
| `container type:`      | no                            | Symbol to override container-type autodetect. May be one of: `:air`, `:bz2`, `:cab`, `:dmg`, `:generic_unar`, `:gzip`, `:otf`, `:pkg`, `:rar`, `:seven_zip`, `:sit`, `:tar`, `:ttf`, `:xar`, `:zip`, `:naked`. (Example: [parse.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/parse.rb#L11))
| `auto_updates`         | no                            | `true`. Assert the Cask artifacts auto-update. Use if `Check for Updates…` or similar is present in app menu, but not if it only opens a webpage and does not do the download and installation for you.
