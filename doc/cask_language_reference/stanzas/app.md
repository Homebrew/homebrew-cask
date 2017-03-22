# app

In the simple case of a string argument to `app`, the source file is moved to the target `/Applications` directory. For example:

```ruby
app 'Alfred 2.app'
```

by default moves the source to:

```bash
/Applications/Alfred 2.app
```

## Renaming the Target

You can rename the target which appears in your `/Applications` directory by adding a `target:` key to `app`. Example (from [scala-ide.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/scala-ide.rb#L21)):

```ruby
app 'eclipse/Eclipse.app', target: 'Scala IDE.app'
```

## target: May Contain an Absolute Path

If `target:` has a leading slash, it is interpreted as an absolute path. The containing directory for the absolute path will be created if it does not already exist. Example (from [manopen.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/manopen.rb#L12)):

```ruby
artifact 'openman.1', target: '/usr/local/share/man/man1/openman.1'
```

## target: Works on Most Artifact Types

The `target:` key works similarly for most Cask artifacts, such as `app`, `binary`, `colorpicker`, `dictionary`, `font`, `input_method`, `prefpane`, `qlplugin`, `service`, `suite`, and `artifact`.

## target: Should Only Be Used in Select Cases

Don’t use `target:` for aesthetic reasons, like removing version numbers (`app "Slack #{version}.app", target: 'Slack.app'`). Use it when it makes sense functionally and document your reason clearly in the Cask, using one of the templates: [for clarity](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/imagemin.rb#L12); [for consistency](https://github.com/caskroom/homebrew-cask/blob/d2a6b26df69fc28c4d84d6f5198b2b652c2f414d/Casks/devonthink-pro-office.rb#L16); [to prevent conflicts](https://github.com/caskroom/homebrew-cask/blob/bd6dc1a64e0bdd35ba0e20789045ea023b0b6aed/Casks/flash-player-debugger.rb#L11); [due to developer suggestion](https://github.com/caskroom/homebrew-cask/blob/ff3e9c4a6623af44b8a071027e8dcf3f4edfc6d9/Casks/kivy.rb#L12).
