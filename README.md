# Homebrew-Cask

#### Important: At some point in the future Homebrew-cask will change its behaviour from linking apps to moving them. See [issue #13201](https://github.com/caskroom/homebrew-cask/issues/13201) for details.
---

_“To install, drag this icon…” no more!_

Homebrew-Cask extends [Homebrew](http://brew.sh) and brings its elegance, simplicity, and speed to the installation and management of GUI Mac applications such as Google Chrome and Adium.

We do this by providing a friendly homebrew-style CLI workflow for the administration of Mac applications distributed as binaries.

It’s implemented as a `homebrew` [external command](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/External-Commands.md) called `cask`.

[![Build Status](https://img.shields.io/travis/caskroom/homebrew-cask/master.svg)](https://travis-ci.org/caskroom/homebrew-cask)
[![Code Climate](https://img.shields.io/codeclimate/github/caskroom/homebrew-cask.svg)](https://codeclimate.com/github/caskroom/homebrew-cask)
[![Coverage Status](https://img.shields.io/coveralls/caskroom/homebrew-cask.svg)](https://coveralls.io/r/caskroom/homebrew-cask)
[![Join the chat at https://gitter.im/caskroom/homebrew-cask](https://img.shields.io/badge/gitter-join%20chat-blue.svg)](https://gitter.im/caskroom/homebrew-cask)

## Let’s try it!

```bash
$ brew cask install google-chrome
=> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
=> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
=> Linking Google Chrome.app to /Users/phinze/Applications/Google Chrome.app
```

And there we have it. Google Chrome installed with a few quick commands: no clicking, no dragging, no dropping.

```bash
$ open ~/Applications/"Google Chrome.app"
```

## Learn More

* Find basic documentation on using homebrew-cask in [USAGE.md](USAGE.md)
* Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
* Want to hack on our code? Also awesome! See [hacking.md](doc/hacking.md)
* More project-related details and discussion are available in [FAQ.md](doc/FAQ.md) and [CASK_LANGUAGE_REFERENCE.md](doc/CASK_LANGUAGE_REFERENCE.md)

## Questions? Wanna chat?

We’re really rather friendly! Here are the best places to talk about the project:

* Start an [issue on GitHub](https://github.com/caskroom/homebrew-cask/issues/new)
* Join us on IRC, we’re at `#homebrew-cask` on Freenode

## Reporting Bugs

We still have bugs — and we are busy fixing them!  If you have a problem, don’t be shy about reporting it on our [GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open). Always search for your issue before posting a new one.

When reporting bugs, remember that homebrew-cask is an independent project from Homebrew. Do your best to direct bug reports to the appropriate project. If your command-line started with `brew cask`, bring the bug to us first!

Before reporting a bug, make sure you have the latest versions of homebrew, homebrew-cask, and all Taps by running the following command:

```bash
$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```

If the issue persists, please run the problematic command with the `--verbose` flag and post its and `brew cask doctor`’s outputs in distinct [fenced code blocks](https://help.github.com/articles/github-flavored-markdown/#fenced-code-blocks).

## License:
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)
