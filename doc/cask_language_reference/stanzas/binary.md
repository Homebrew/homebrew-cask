# binary

In the simple case of a string argument to `binary`, the source file is linked into the `$(brew --prefix)/bin` directory (typically `/usr/local/bin`) on installation. For example (from [operadriver.rb](https://github.com/caskroom/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/operadriver.rb#L11)):

```ruby
binary 'operadriver'
```

creates a symlink to:

```bash
$(brew --prefix)/bin/operadriver
```

from a source file such as:

```bash
/usr/local/Caskroom/operadriver/0.2.2/operadriver
```

## Renaming the Target

You can rename the target which appears in your binaries directory directory by adding a `target:` key to `binary`, for example to be to be consistent with other command-line tools like [changing case](https://github.com/caskroom/homebrew-cask/blob/070a3bdeadf339892268d79aded9108ba7960f32/Casks/praat.rb#L12):

```ruby
binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
```

or [removing an extension](https://github.com/caskroom/homebrew-cask/blob/c443d4f5c6864538efe5bb1ecf662565a5ffb438/Casks/filebot.rb#L13):

```ruby
binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'
```

or just [cleaning up the name](https://github.com/caskroom/homebrew-cask/blob/146917cbcc679648de6b0bccff4e9b43fce0e6c8/Casks/minishift.rb#L13):

```ruby
binary 'minishift-darwin-amd64', target: 'minishift'
```

## target: May Contain an Absolute Path

If `target:` has a leading slash, it is interpreted as an absolute path. This is useful for installing manual pages that are often included with binaries, for example (from [manopen.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/manopen.rb#L11#L12)):

```ruby
binary 'openman'
artifact 'openman.1', target: '/usr/local/share/man/man1/openman.1'
```
