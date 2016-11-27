# pkg

This stanza must always be accompanied by [`uninstall`](uninstall.md)

The first argument to the `pkg` stanza should be a relative path to the `.pkg` file to be installed. For example:

```ruby
pkg 'Unity.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install process. Currently supported keys are `allow_untrusted:` and `choices:`.

## `pkg allow_untrusted:`

`pkg allow_untrusted: true` can be used to install the `.pkg` with an untrusted certificate passing `-allowUntrusted` to `/usr/sbin/installer`.

[Example (alinof-timer.rb)](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alinof-timer.rb#L10):

```ruby
pkg 'AlinofTimer.pkg', allow_untrusted: true
```

## `pkg choices:`

`pkg choices:` can be used to override `.pkg`’s default install options via `-applyChoiceChangesXML`. It takes a deserialized version of the `choiceChanges` property list (refer to the `CHOICE CHANGES FILE` section of the [`installer` manual page](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/installer.8.html) for further information).

See [this pull request of wireshark-chmodbpf](https://github.com/caskroom/homebrew-cask/pull/26997) for an example of the proceduce to extract the choices value, as well as their equivalents to the GUI options.

Example (TODO: A resonable cask which uses `choices:` should be linked here)

```ruby
pkg 'MyFancyPkg.pkg',
    choices: [
               {
                 'choiceIdentifier' => 'choice1',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 1,
               }
             ]
```
