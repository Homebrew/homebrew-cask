# Why some apps aren’t included in `upgrade`

After running `brew cask upgrade`, you may notice some casks you think should be upgrading, aren’t.

As you’re likely aware, a lot of macOS software upgrades by itself:

![](https://upload.wikimedia.org/wikipedia/commons/c/c0/Sparkle_Test_App_Software_Update.png)

That could cause conflicts when used in tandem with Homebrew Cask’s `upgrade` mechanism.

If you upgrade software through it’s built-in mechanism, that happens without Homebrew Cask’s knowledge so both versions get out of sync. If you then `upgrade`d through Homebrew Cask and we have a lower version on the cask, you’d get a downgrade.

There are a few ideas to fix this problem:

* Try to prevent the software’s automated updates. That won’t be a universal solution and may cause it to break. Most software on Homebrew Cask is closed-source, so we’d be guessing. This is also why pinning casks to a version isn’t available.
* Try to extract the installed software’s version and compare it to the cask, deciding what to do at that time. That’s a complicated solution that breaks other parts of our methodology, such as using versions to interpolate in `url`s (a definite win for maintainability). That solution also isn’t universal, as many software developers are inconsistent in their versioning schemes (and app bundles have both), it doesn’t work for all types of software we support, and in some cases would be hard to figure out, like `pkg` installers.

So we let software be. Installing it with Homebrew Cask should make it behave the same as if you had installed it manually. But we also want to support software that does not auto-upgrade, so we add [`auto_updates true`](https://github.com/Homebrew/homebrew-cask/blob/62c0495b254845a481dacac6ea7c8005e27a3fb0/Casks/alfred.rb#L10) to casks of software that can do it, and exclude those from `brew cask upgrade`.

Casks who use [`version :latest`](https://github.com/Homebrew/homebrew-cask/blob/4184d50d2d7fa4afb62e6c7eb6761ae5ac417c88/Casks/servo.rb#L2) are also excluded, because we have no way to track the version they’re in. Asking the developers of such software to provide versioned releases (i.e. the download `url` has the version in its path) helps.

If you still want to force software to be upgraded via Homebrew Cask, you can:

* Reference it specifically in the `upgrade` command. While `brew upgrade` ignores it, `brew cask upgrade {{cask_name}}` doesn’t.
* Use the `--greedy` flag: `brew cask upgrade --greedy`.

Refer to the `upgrade` section of the `brew cask` manual page by running `man -P 'less --pattern "^ {7}upgrade"' brew-cask`.
