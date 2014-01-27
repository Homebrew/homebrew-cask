# "To install, drag this icon..." no more!

[![Build Status](https://travis-ci.org/phinze/homebrew-cask.png?branch=master)](https://travis-ci.org/phinze/homebrew-cask)
[![Code Climate](https://codeclimate.com/github/phinze/homebrew-cask.png)](https://codeclimate.com/github/phinze/homebrew-cask)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/phinze/homebrew-cask/trend.png)](https://bitdeli.com/free "Bitdeli Badge")


Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management of GUI Mac applications such as Google Chrome and Adium.

Homebrew-cask provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew` "[external
command](https://github.com/mxcl/homebrew/wiki/External-Commands)" called
`cask`.

## Let's try it!
```sh
$ brew tap phinze/cask
$ brew install brew-cask
$ brew cask install google-chrome
=> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
=> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
=> Linking Google Chrome.app to /Users/phinze/Applications/Google Chrome.app
```
And there we have it. Google Chrome installed with a few quick commands: no clicking, no dragging, no dropping.
```sh
open ~/Applications/"Google Chrome.app"
```
## Learn More

 * Find basic documentation on using homebrew-cask in [USAGE.md](USAGE.md)
 * Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
 * Want to hack on our code? Also awesome! See [HACKING.md](HACKING.md)
 * More project-related details and discussion are available in [FAQ.md](FAQ.md)

## Questions? Wanna chat?

We're really rather friendly! Here are the best places to talk about the project:

 * Start an [issue on GitHub](https://github.com/phinze/homebrew-cask/issues/new)
 * Join us on IRC, we're at `#homebrew-cask` on Freenode

## Reporting Bugs

We still have bugs -- and we are busy fixing them!  If you have a problem, don't
be shy about reporting it on our [GitHub issues page](https://github.com/phinze/homebrew-cask/issues?state=open).

When reporting bugs, remember that homebrew-cask is an independent project from
Homebrew.  Do your best to direct bug reports to the appropriate project.  If
your command-line started with `brew cask`, bring the bug to us first!

## License:
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)
