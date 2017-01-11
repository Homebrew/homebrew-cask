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

You can rename the target which appears in your binaries directory directory by adding a `target:` key to `binary`. Behaviour and usage is [the same as with `app`](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/app.md#renaming-the-target). However, for `binary` the select cases don’t apply as rigidly. It’s fine to take extra liberties with `target:` to be consistent with other command-line tools, like [changing case](https://github.com/caskroom/homebrew-cask/blob/6e4eb6ba58ca0d9e6d42a1d78856cc8a35cf5fce/Casks/diffmerge.rb#L11), [removing an extension](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/filebot.rb#L12), or [cleaning up the name](https://github.com/caskroom/homebrew-cask/blob/146917cbcc679648de6b0bccff4e9b43fce0e6c8/Casks/minishift.rb#L13).
