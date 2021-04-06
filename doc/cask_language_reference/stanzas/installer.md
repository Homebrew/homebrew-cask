# installer

This stanza must always be accompanied by [`uninstall`](uninstall.md).

The `installer` stanza takes a series of key-value pairs, the first key of which must be `manual:` or `script:`.

## installer manual:

`installer manual:` takes a single string value, describing a GUI installer which must be run by the user at a later time. The path may be absolute, or relative to the Cask. Example (from [nutstore.rb](https://github.com/Homebrew/homebrew-cask/blob/249ec31048591308e63e50f79dae01d2f933cccf/Casks/nutstore.rb#L9)):

```ruby
installer manual: "Nutstore Installer.app"
```

## installer script:

`installer script:` introduces a series of key-value pairs describing a command which will automate completion of the install. **It should never be used for interactive installations.** The form is similar to `uninstall script:`:

| key             | value
| ----------------|------------------------------
| `executable:`   | path to an install script to be run
| `args:`         | array of arguments to the install script
| `input:`        | array of lines of input to be sent to `stdin` of the script
| `must_succeed:` | set to `false` if the script is allowed to fail
| `sudo:`         | set to `true` if the script needs `sudo`

The path may be absolute, or relative to the Cask. Example (from [miniforge.rb](https://github.com/Homebrew/homebrew-cask/blob/ed2033fb3578376c3ee58a2cb459ef96fa6eb37d/Casks/miniforge.rb#L15L18)):

```ruby
  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
```

If the `installer script:` does not require any of the key-values it can point directly to the path of the install script:

```ruby
installer script: "#{staged_path}/install.sh"
```
