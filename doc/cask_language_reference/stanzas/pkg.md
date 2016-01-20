# pkg

The first argument to the `pkg` stanza should be a relative path to the `.pkg` file to be installed. For example:

```ruby
pkg 'Unity.pkg'
```

Subsequent arguments to `pkg` are key/value pairs which modify the install process. Currently supported keys are:

* `:allow_untrusted` — pass `-allowUntrusted` to `/usr/sbin/installer`

Example (from [alinof-timer.rb](https://github.com/caskroom/homebrew-cask/blob/9a617c077dc238aac28dc9ad325f8924b19d6306/Casks/alinof-timer.rb)):

```ruby
pkg 'AlinofTimer.pkg', :allow_untrusted => true
```