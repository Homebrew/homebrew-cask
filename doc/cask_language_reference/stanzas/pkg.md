# pkg

This stanza must always be accompanied by (`uninstall`)[uninstall.md]

The first argument to the `pkg` stanza should be a relative path to the `.pkg` file to be installed. For example:

```ruby
pkg 'Unity.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install process. Currently supported keys are:

* `allow_untrusted:` — pass `-allowUntrusted` to `/usr/sbin/installer`

Example (from [alinof-timer.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alinof-timer.rb#L10)):

```ruby
pkg 'AlinofTimer.pkg', allow_untrusted: true
```
