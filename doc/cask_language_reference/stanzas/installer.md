# installer

This stanza must always be accompanied by [`uninstall`](uninstall.md).

The `installer` stanza takes a series of key-value pairs, the first key of which must be `manual:` or `script:`.

## installer manual:

`installer manual:` takes a single string value, describing a GUI installer which must be run by the user at a later time. The path may be absolute, or relative to the Cask. Example (from [little-snitch.rb](https://github.com/caskroom/homebrew-cask/blob/818047bf488be92923c8770ef3df8007a0db7704/Casks/little-snitch.rb#L10)):

```ruby
installer manual: 'Little Snitch Installer.app'
```

## installer script:

`installer script:` introduces a series of key-value pairs describing a command which will automate completion of the install. The form is similar to `uninstall script:`:

| key             | value
| ----------------|------------------------------
| `script:`       | path to an install script to be run via `sudo`. (Required first key.)
| `args:`         | array of arguments to the install script
| `input:`        | array of lines of input to be sent to `stdin` of the script
| `must_succeed:` | set to `false` if the script is allowed to fail
| `sudo:`         | set to `true` if the script needs `sudo`

The path may be absolute, or relative to the Cask. Example (from [adobe-air.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/adobe-air.rb#L10-#L12)):

```ruby
installer script: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
          args:   %w[-silent],
          sudo:   true
```
