# app

In the simple case of a string argument to `app`, a symlink is created in the target `~/Applications` directory using the same basename as the source file. For example:

```ruby
app 'Alfred 2.app'
```

causes the creation of this symlink:

```bash
~/Applications/Alfred 2.app
```

which points to a source file such as:

```bash
/opt/homebrew-cask/Caskroom/alfred/2.8.2_431/Alfred 2.app
```

## Renaming the Target

You can rename the target link which appears in your `~/Applications` directory by adding a `target:` key to `app`. Example (from [scala-ide.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/scala-ide.rb#L21)):

```ruby
app 'eclipse/Eclipse.app', target: 'Scala IDE.app'
```

## target: May Contain an Absolute Path

If `target:` has a leading slash, it is interpreted as an absolute path. The containing directory for the absolute path will be created if it does not already exist. Example (from [manopen.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/manopen.rb#L12)):

```ruby
artifact 'openman.1', target: '/usr/local/share/man/man1/openman.1'
```

## target: Works on Most Artifact Types

The `target:` key works similarly for most Cask artifacts, such as `app`, `binary`, `colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`, `service`, `suite`, and `artifact`.

## target: Should Only Be Used in Select Cases

Don’t use `target:` for aesthetic reasons, like removing version numbers (`app "Slack #{version}.app", target: 'Slack.app'`). With `app`, use it when it makes sense functionally and document your reason cleary in the Cask: was it [for clarity](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/imagemin.rb#L12); [for consistency](https://github.com/caskroom/homebrew-cask/blob/d2a6b26df69fc28c4d84d6f5198b2b652c2f414d/Casks/devonthink-pro-office.rb#L16); [to prevent conflicts](https://github.com/caskroom/homebrew-cask/blob/bd6dc1a64e0bdd35ba0e20789045ea023b0b6aed/Casks/flash-player-debugger.rb#L11#L12)? With `binary` you can take some extra liberties to be consistent with other command-line tools, like [changing case](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/diffmerge.rb#L11) or [removing an extension](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/filebot.rb#L12).
