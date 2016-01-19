# installer

The `installer` stanza takes a series of key-value pairs, the first key of which must be `:manual` or `:script`.

### installer :manual

`installer :manual` takes a single string value, describing a GUI installer which must be run by the user at a later time. The path may be absolute, or relative to the Cask. Example (from [little-snitch.rb](https://github.com/caskroom/homebrew-cask/blob/fb2ac85d9fe4bf5095a63b01d58e69ca64a6c728/Casks/little-snitch.rb)):

```ruby
installer :manual => 'Little Snitch Installer.app'
```

## installer :script

`installer :script` introduces a series of key-value pairs describing a command which will automate completion of the install. The form is similar to `uninstall :script`:

| key             | value
| ----------------|------------------------------
| `:script`       | path to an install script to be run via `sudo`. (Required first key.)
| `:args`         | array of arguments to the install script
| `:input`        | array of lines of input to be sent to `stdin` of the script
| `:must_succeed` | set to `false` if the script is allowed to fail
| `:sudo`         | set to `false` if the script does not need `sudo`

The path may be absolute, or relative to the Cask. Example (from [adobe-air.rb](https://github.com/caskroom/homebrew-cask/blob/240320bef456fe74621d89fd160c4a6b5a7f56cc/Casks/adobe-air.rb)):

```ruby
installer :script => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
          :args   => %w[-silent],
          :sudo   => true
```