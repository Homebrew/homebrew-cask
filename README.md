# Homebrew-Cask

_“To install, drag this icon…” no more!_

Homebrew-Cask extends [Homebrew](http://brew.sh) and brings its elegance, simplicity, and speed to the installation and management of GUI macOS applications such as Google Chrome and Adium.

We do this by providing a friendly Homebrew-style CLI workflow for the administration of macOS applications distributed as binaries.

It’s implemented as a `homebrew` [external command](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/External-Commands.md) called `cask`.

[![Build Status](https://img.shields.io/travis/caskroom/homebrew-cask/master.svg)](https://travis-ci.org/caskroom/homebrew-cask)
[![Code Climate](https://img.shields.io/codeclimate/github/caskroom/homebrew-cask.svg)](https://codeclimate.com/github/caskroom/homebrew-cask)
[![Coverage Status](https://img.shields.io/coveralls/caskroom/homebrew-cask.svg)](https://coveralls.io/r/caskroom/homebrew-cask)
[![Join the chat at https://gitter.im/caskroom/homebrew-cask](https://img.shields.io/badge/gitter-join%20chat-blue.svg)](https://gitter.im/caskroom/homebrew-cask)

## Let’s try it!

To start using Homebrew-Cask, you just need [Homebrew](http://brew.sh/) installed.

```bash
$ brew cask install google-chrome
==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
==> Moving App 'Google Chrome.app' to '/Applications/Google Chrome.app'
🍺  google-chrome staged at '/usr/local/Caskroom/google-chrome/latest' (3 files, 288K)
```

And there we have it. Google Chrome installed with a few quick commands: no clicking, no dragging, no dropping.

```bash
$ open /Applications/"Google Chrome.app"
```

## Learn More

* Find basic documentation on using Homebrew-Cask in [USAGE.md](USAGE.md)
* Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
* Want to hack on our code? Also awesome! See [hacking.md](doc/development/hacking.md)
* More project-related details and discussion are available in the [documentation](doc)

## Reporting bugs

Like most pieces of software, Homebrew-Cask has bugs — and we are busy fixing them! If you find a new bug tell us about it, but before you do make sure it really is a bug, by following [this guide](doc/reporting_bugs/pre_bug_report.md).

If your issue persists, follow these instructions to the appropriate course of action:

* [A cask fails to install](doc/reporting_bugs/a_cask_fails_to_install.md)
* [My problem isn’t listed][bug_report_template]

## Requests

* Start an issue on GitHub following one of these templates:
  * [Feature request][feature_request_template]
  * [Cask request][cask_request_template]

## Questions? Wanna chat?

We’re really rather friendly! Here are the best places to talk about the project:

* If none of the templates above is appropriate, [open an issue](https://github.com/caskroom/homebrew-cask/issues/new).
* Join us (and [caskbot](https://github.com/passcod/caskbot)) on IRC at `#homebrew-cask` on Freenode
* Join us on [Gitter](https://gitter.im/caskroom/homebrew-cask)

## License
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)

[bug_report_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Bug%20report%3A&body=%28Remember%20to%20run%20%60brew%20update%3B%20brew%20cleanup%3B%20brew%20cask%20cleanup%60%20before%20reporting%20your%20issue.%20It%20usually%20fixes%20things%21%29%0A%0A%23%23%23%20Description%20of%20issue%0A%0A%0A%0A%23%23%23%20Output%20of%20%60brew%20cask%20%3Ccommand%3E%20--verbose%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A%0A%23%23%23%20Output%20of%20%60brew%20doctor%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A%0A%23%23%23%20Output%20of%20%60brew%20cask%20doctor%60%0A%0A%60%60%60%0A%28paste%20output%20here%29%0A%60%60%60%0A
[cask_request_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Cask%20request%3A&body=%23%23%23%20Cask%20details%0A%0A%28Please%20fill%20out%20as%20much%20as%20possible%29%0A%0A%2A%2AName%2A%2A%20-%0A%0A%2A%2AHomepage%2A%2A%20-%0A%0A%2A%2ALicense%2A%2A%20-%0A%0A%2A%2ADownload%20URL%2A%2A%20-%0A%0A%2A%2ADescription%2A%2A%20-%0A
[feature_request_template]: https://github.com/caskroom/homebrew-cask/issues/new?title=Feature%20request%3A&body=%23%23%23%20Description%20of%20feature%2Fenhancement%0A%0A%0A%0A%23%23%23%20Justification%0A%0A%0A%0A%23%23%23%20Example%20use%20case%0A%0A%0A%0A
