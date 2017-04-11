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
| `executable:`   | path to an install script to be run
| `args:`         | array of arguments to the install script
| `input:`        | array of lines of input to be sent to `stdin` of the script
| `must_succeed:` | set to `false` if the script is allowed to fail
| `sudo:`         | set to `true` if the script needs `sudo`

The path may be absolute, or relative to the Cask. Example (from [ransomwhere.rb](https://github.com/caskroom/homebrew-cask/blob/2a7499561420bd375e45e96082c273ca75b600d1/Casks/ransomwhere.rb#L12-L16)):

```ruby
  installer script: {
                      executable: "#{staged_path}/RansomWhere.app/Contents/MacOS/RansomWhere",
                      args:       ['-install'],
                      sudo:       true,
                    }
```

If the `installer script:` does not require any of the key-values it can point directly to the path of the install script. Example (from [amazon-drive.rb](https://github.com/caskroom/homebrew-cask/blob/427c52acdc3ce0ab1e97950e6cee9896480d7353/Casks/amazon-drive.rb#L10)):

```ruby
installer script: 'Amazon Drive Installer.app/Contents/MacOS/Amazon Drive Installer'
```
