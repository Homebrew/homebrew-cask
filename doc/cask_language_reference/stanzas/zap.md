# zap

## zap Stanza Purpose

The `zap` stanza describes a more complete uninstallation of files associated with a Cask. The `zap` procedures will never be performed by default, but only if the user uses `--zap` on `uninstall`:

```bash
$ brew uninstall --zap firefox
```

`zap` stanzas may remove:

* Preference files and caches stored within the user’s `~/Library` directory.
* Shared resources such as application updaters. Since shared resources may be removed, other applications may be affected by `brew uninstall --zap`. Understanding that is the responsibility of the end user.

`zap` stanzas should not remove:

* Files created by the user directly.

Appending `--force` to the command will allow you to perform these actions even if the Cask is no longer installed:

```bash
brew uninstall --zap --force firefox
```

## zap Stanza Syntax

The form of `zap` stanza follows the [`uninstall` stanza](uninstall.md). All of the same directives are available. The `trash:` key is preferred over `delete:`.

Example: [dropbox.rb](https://github.com/Homebrew/homebrew-cask/blob/31cd96cc0e00dab1bff74d622e32d816bafd1f6f/Casks/dropbox.rb#L17-L35)

## zap Creation

The simplest method is to use [@nrlquaker's CreateZap](https://github.com/nrlquaker/homebrew-createzap), which can automatically generate the stanza. In a few instances it may fail to pick up anything and manual creation may be required.

Manual creation can be facilitated with:

* Some of the developer tools are already available in Homebrew Cask.
* `sudo find / -iname "*{{search item}}*"`
* An uninstaller tool such as [AppCleaner](https://github.com/Homebrew/homebrew-cask/blob/master/Casks/appcleaner.rb).
* Inspecting the usual suspects, i.e. `/Library/{'Application Support',LaunchAgents,LaunchDaemons,Frameworks,Logs,Preferences,PrivilegedHelperTools}` and `~/Library/{'Application Support',Caches,Containers,LaunchAgents,Logs,Preferences,'Saved Application State'}`.
