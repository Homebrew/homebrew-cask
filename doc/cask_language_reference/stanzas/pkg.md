# pkg

This stanza must always be accompanied by [`uninstall`](uninstall.md)

The first argument to the `pkg` stanza should be a relative path to the `.pkg` file to be installed. For example:

```ruby
pkg 'Unity.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install process. Currently supported keys are `allow_untrusted:` and `choices:`.

## `pkg allow_untrusted:`

`pkg allow_untrusted: true` can be used to install the `.pkg` with an untrusted certificate passing `-allowUntrusted` to `/usr/sbin/installer`.

This option is not permitted in official Homebrew-Cask taps, it is only provided for use in third-party taps or local Casks.

Example ([alinof-timer.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alinof-timer.rb#L10)):

```ruby
pkg 'AlinofTimer.pkg', allow_untrusted: true
```

## `pkg choices:`

`pkg choices:` can be used to override `.pkg`’s default install options via `-applyChoiceChangesXML`. It uses a deserialized version of the `choiceChanges` property list (refer to the `CHOICE CHANGES FILE` section of the [`installer` man page](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/installer.8.html) for further information).

Running the  macOS command:

```bash
$ installer -showChoicesXML -pkg '/path/to/my.pkg'
```

will output an XML which you can use to extract the `choices:` values, as well as their equivalents to the GUI options.

See [this pull request for wireshark-chmodbpf](https://github.com/Homebrew/homebrew-cask/pull/26997) and [this one for wine-staging](https://github.com/Homebrew/homebrew-cask/pull/27937) for some examples of the procedure.

Example ([wireshark-chmodbpf.rb](https://github.com/Homebrew/homebrew-cask/blob/f95b8a8306b91fe9da7908b842f4a5fa80f7afe0/Casks/wireshark-chmodbpf.rb#L9#L26)):
```ruby
pkg "Wireshark #{version} Intel 64.pkg",
    choices: [
               {
                 'choiceIdentifier' => 'wireshark',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 0,
               },
               {
                 'choiceIdentifier' => 'chmodbpf',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 1,
               },
               {
                 'choiceIdentifier' => 'cli',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 0,
               },
             ]
```

Example ([wine-staging.rb](https://github.com/Homebrew/homebrew-cask/blob/51b65f6a5a25a7f79af4d372e1a0bf1dc3849251/Casks/wine-staging.rb#L11#L18)):
```ruby
pkg "winehq-staging-#{version}.pkg",
    choices: [
               {
                 'choiceIdentifier' => 'choice3',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 1,
               },
             ]
```
