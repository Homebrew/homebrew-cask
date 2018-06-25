<sup><sub>[Go back](../../README.md#reporting-bugs)</sup></sub>

# `uninstall` wrongly reports cask as not installed

Reports of this bug are usually accompanied with the output of `brew cask list` showing the cask is indeed installed. [You should not rely on `brew cask list`](https://github.com/Homebrew/homebrew-cask/issues/14058) anyway, and this error is somewhat related to it.

This is prone to happen when you try to uninstall a cask that has been updated since you last installed, or when a cask no longer exists in the repo (`brew cask list` will show it with `(!)`). We’re working to handle those situations better.

For now, rerun your command with `--force`, or uninstall manually.

**Do not open an issue.**
