# Homebrew-Cask

#### Important December update: Homebrew-Cask will now be kept up to date together with Homebrew (see [#15381](https://github.com/caskroom/homebrew-cask/pull/15381) for details). If you haven’t yet, run `brew uninstall --force brew-cask; brew update` to switch to the new system.

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

To start using Homebrew-Cask, you just need [Homebrew](http://brew.sh/) installed.

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

* Start an issue on GitHub using one of these templates:
  * [Bug report][bug_report_template]
  * [Feature request][feature_request_template]
  * [Cask request][cask_request_template]
* Join us (and [caskbot](https://github.com/passcod/caskbot)) on IRC at `#homebrew-cask` on Freenode
* Join us on [Gitter](https://gitter.im/caskroom/homebrew-cask)

## Reporting Bugs

We still have bugs — and we are busy fixing them!  If you have a problem, don’t be shy about [reporting it][bug_report_template] on our [GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open). Always search for your issue before posting a new one.

When reporting bugs, remember that homebrew-cask is an independent project from Homebrew. Do your best to direct bug reports to the appropriate project. If your command-line started with `brew cask`, bring the bug to us first!

Before reporting a bug, make sure you have the latest versions of homebrew, homebrew-cask, and all Taps by running the following command:

```bash
$ brew update; brew cleanup; brew cask cleanup
```

In addition, if you haven’t yet, run the following once to [switch to the new system](https://github.com/caskroom/homebrew-cask#important-december-update-homebrew-cask-will-now-be-kept-up-to-date-together-with-homebrew-see-15381-for-details-if-you-havent-yet-run-brew-uninstall---force-brew-cask-brew-update-to-switch-to-the-new-system):

```bash
$ brew uninstall --force brew-cask; brew update
```

Finally, if it's been a while since you last updated Homebrew-Cask, you may still have the old `phinze/cask` tap installed. Run the following to clean up, then try your command again:

```bash
$ brew untap phinze/cask; brew untap caskroom/cask; brew update
```

If the issue persists, please use our [bug report template][bug_report_template] to report the output of running the problematic command with the `--verbose` flag, along with the output of `brew cask doctor`.

## License:
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)

[bug_report_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Bug%20report%3A&body=%28Remember%20to%20run%20%60brew%20update%3B%20brew%20cleanup%3B%20brew%20cask%20cleanup%60%20before%20reporting%20your%20issue.%20It%20usually%20fixes%20things%21%29%0A%0A%23%23%23%20Description%20of%20issue%0A%0A%0A%0A%23%23%23%20Output%20of%20%60brew%20cask%20%3Ccommand%3E%20--verbose%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A%0A%23%23%23%20Output%20of%20%60brew%20doctor%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A%0A%23%23%23%20Output%20of%20%60brew%20cask%20doctor%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A
[cask_request_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Cask%20request%3A&body=%23%23%23%20Cask%20details%0A%0A%28Please%20fill%20out%20as%20much%20as%20possible%29%0A%0A%2A%2AName%2A%2A%20-%0A%0A%2A%2AHomepage%2A%2A%20-%0A%0A%2A%2ALicense%2A%2A%20-%0A%0A%2A%2ADownload%20URL%2A%2A%20-%0A%0A%2A%2ADescription%2A%2A%20-%0A
[feature_request_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Feature%20request%3A&body=%23%23%23%20Description%20of%20feature%2Fenhancement%0A%0A%0A%0A%23%23%23%20Justification%0A%0A%0A%0A%23%23%23%20Example%20use%20case%0A%0A%0A%0A
