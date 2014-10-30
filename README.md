# NOTICE: The Cask syntax is changing! (8 Sep 2014)

There will be a period of transition while we update the Cask DSL to use
new forms described in [#4688](https://github.com/caskroom/homebrew-cask/issues/4688).

End users should not notice a difference — but see below about upgrading
on errors.  Cask authors will need to adjust to the new DSL forms.

The Cask DSL 1.0 will be documented in [CASK_LANGUAGE_REFERENCE.md](doc/CASK_LANGUAGE_REFERENCE.md)
and [cask_language_deltas.md](doc/cask_language_deltas.md).

Code to support most of the new DSL forms has been in release for several
weeks; most users are already running forward compatible code<sup>1</sup>.

The transition officially begins with version 0.40.0, released 8 Sep 2014.
Cask definition files will also be changing.  If you experience an error
when running Homebrew-cask, please run

```bash
$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```

to get the latest code.

<sup>1</sup> forward compatibility began with [v0.38.0](https://github.com/caskroom/homebrew-cask/releases/tag/v0.38.0), released 28 Jul 2014

---------------------------------------


# "To install, drag this icon..." no more!

[![Build Status](https://travis-ci.org/caskroom/homebrew-cask.png?branch=master)](https://travis-ci.org/caskroom/homebrew-cask)
[![Code Climate](https://codeclimate.com/github/caskroom/homebrew-cask.png)](https://codeclimate.com/github/caskroom/homebrew-cask)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/caskroom/homebrew-cask/trend.png)](https://bitdeli.com/free "Bitdeli Badge")


Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management of GUI Mac applications such as Google Chrome and Adium.

Homebrew-cask provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew` "[external command](https://github.com/mxcl/homebrew/wiki/External-Commands)"
called `cask`.

## Let's try it!
```sh
$ brew install caskroom/cask/brew-cask
$ brew cask install google-chrome
=> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
=> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
=> Linking Google Chrome.app to /Users/phinze/Applications/Google Chrome.app
```
And there we have it. Google Chrome installed with a few quick commands: no clicking, no dragging, no dropping.
```sh
$ open ~/Applications/"Google Chrome.app"
```
## Learn More

 * Find basic documentation on using homebrew-cask in [USAGE.md](USAGE.md)
 * Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
 * Want to hack on our code? Also awesome! See [HACKING.md](doc/HACKING.md)
 * More project-related details and discussion are available in [FAQ.md](doc/FAQ.md) and [CASK_LANGUAGE_REFERENCE.md](doc/CASK_LANGUAGE_REFERENCE.md)

## Questions? Wanna chat?

We're really rather friendly! Here are the best places to talk about the project:

 * Start an [issue on GitHub](https://github.com/caskroom/homebrew-cask/issues/new)
 * Join us on IRC, we're at `#homebrew-cask` on Freenode

## Reporting Bugs

We still have bugs -- and we are busy fixing them!  If you have a problem, don't
be shy about reporting it on our [GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open).

When reporting bugs, remember that homebrew-cask is an independent project from
Homebrew.  Do your best to direct bug reports to the appropriate project.  If
your command-line started with `brew cask`, bring the bug to us first!

Before reporting a bug, make sure you have the latest versions of Homebrew,
homebrew-cask, and all Taps by running the following command:

```bash
$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```

## License:
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)
