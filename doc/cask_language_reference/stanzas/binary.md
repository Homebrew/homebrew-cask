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

You can rename the target which appears in your binaries directory by adding a `target:` key to `binary`. Behaviour and usage is [the same as with `app`](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/app.md#renaming-the-target). However, for `binary` the select cases don’t apply as rigidly. It’s fine to take extra liberties with `target:` to be consistent with other command-line tools, like [changing case](https://github.com/caskroom/homebrew-cask/blob/9ad93b833961f1d969505bc6bdb1c2ad4e58a433/Casks/openscad.rb#L12), [removing an extension](https://github.com/caskroom/homebrew-cask/blob/c443d4f5c6864538efe5bb1ecf662565a5ffb438/Casks/filebot.rb#L13), or [cleaning up the name](https://github.com/caskroom/homebrew-cask/blob/146917cbcc679648de6b0bccff4e9b43fce0e6c8/Casks/minishift.rb#L13).
