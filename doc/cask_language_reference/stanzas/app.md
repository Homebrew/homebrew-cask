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

You can rename the target link which appears in your `~/Applications` directory by adding a `:target` key to `app`. Example (from [scala-ide.rb](https://github.com/caskroom/homebrew-cask/blob/84e8df88836a2c11657e09264bd01b96783bb0d1/Casks/scala-ide.rb#L21)):

```ruby
app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
```

## :target May Contain an Absolute Path

If `:target` has a leading slash, it is interpreted as an absolute path. The containing directory for the absolute path will be created if it does not already exist. Example (from [manopen.rb](https://github.com/caskroom/homebrew-cask/blob/84e8df88836a2c11657e09264bd01b96783bb0d1/Casks/manopen.rb#L12)):

```ruby
artifact 'openman.1', :target => '/usr/local/share/man/man1/openman.1'
```

## :target Works on Most Artifact Types

The `:target` key works similarly for most Cask artifacts, such as `app`, `binary`, `colorpicker`, `font`, `input_method`, `prefpane`, `qlplugin`, `service`, `suite`, and `artifact`.

## :target Should Only Be Used in Select Cases

Don’t use `:target` for aesthetic reasons, like removing version numbers (`app "Slack #{version}.app", :target => 'Slack.app'`). With `app`, use it when it makes sense functionally and document your reason cleary in the Cask: was it [for clarity](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/imagemin.rb#L11); [for consistency](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/devonthink-pro-office.rb#L14); [to prevent conflicts](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/flash-player-debugger.rb#L13)? With `binary` you can take some extra liberties to be consistent with other command-line tools, like [changing case](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/diffmerge.rb#L11) or [removing an extension](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/filebot.rb#L12).