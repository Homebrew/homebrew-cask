# zap

## zap Stanza Purpose

The `zap` stanza describes a more complete uninstallation of files associated with a Cask. The `zap` procedures will never be performed by default, but only if the user invokes the `zap` verb:

```bash
$ brew cask zap td-toolbelt             # also removes org.ruby-lang.installer
```

`zap` stanzas may remove:

* Preference files and caches stored within the user’s `~/Library` directory.
* Shared resources such as application updaters. Since shared resources may be removed, other applications may be affected by `brew cask zap`. Understanding that is the responsibility of the end user.

`zap` stanzas should not remove:

* Files created by the user directly.

## zap Stanza Syntax

The form of `zap` stanza follows the [`uninstall` stanza](uninstall.md). All of the same directives are available. Unlike with `uninstall`, however, `delete:` is not discouraged in `zap`.

For removing user-generated data such as preferences and application support files and folders, use only the `trash:` key.

Example: [dropbox.rb](https://github.com/caskroom/homebrew-cask/blob/4690b1cfe65ab4bec1b1a2545e2275450aba52d5/Casks/dropbox.rb#L26)
