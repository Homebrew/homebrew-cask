<sup><sub>[Go back](../../README.md#reporting-bugs)</sup></sub>

# `Error: Unknown command: cask` error

If you run into `Error: Unknown command: cask` while trying to use any `brew cask` command, please run the below command to fix things:

`cd $(brew --repo); git fetch; git reset --hard origin/master; brew update`



**Do not open an issue.**

(*Technical details:* Homebrew Cask's core code [has been moved](https://github.com/Homebrew/brew/pull/725) to Homebrew. `brew` had a [bug](https://github.com/Homebrew/brew/blob/7395ff20018785bed7d008337b7cf98781190e0a/README.md#update-bug) where it would erroneously report as always being `Already up-to-date.` This combination made it impossible for Homebrew to find the moved Cask code.)
