# Homebrew-Cask

_“To install, drag this icon…” no more!_

Homebrew-Cask extends [Homebrew](http://brew.sh) and brings its elegance, simplicity, and speed to the installation and management of GUI macOS applications such as Google Chrome and Adium.

We do this by providing a friendly Homebrew-style CLI workflow for the administration of macOS applications distributed as binaries.

It’s implemented as a `homebrew` [external command](https://github.com/Homebrew/brew/blob/master/docs/External-Commands.md) called `cask`.

[![Build Status](https://img.shields.io/travis/caskroom/homebrew-cask/master.svg)](https://travis-ci.org/caskroom/homebrew-cask)
[![Join the chat at https://gitter.im/caskroom/homebrew-cask](https://img.shields.io/badge/gitter-join%20chat-blue.svg)](https://gitter.im/caskroom/homebrew-cask)

## Let’s try it!

To start using Homebrew-Cask, you just need [Homebrew](http://brew.sh/) installed.

<img src="https://i.imgur.com/WYa2557.gif" width="450px" alt="Installing Atom (animated gif)">

Slower, now:

```
$ brew cask install atom
==> Satisfying dependencies
complete
==> Downloading https://github.com/atom/atom/releases/download/v1.8.0/atom-mac.zip
######################################################################## 100.0%
==> Verifying checksum for Cask atom
==> Moving App 'Atom.app' to '/Applications/Atom.app'
==> Symlinking Binary 'apm' to '/usr/local/bin/apm'
==> Symlinking Binary 'atom.sh' to '/usr/local/bin/atom'
🍺  atom was successfully installed!
```

And there we have it. Atom installed with one quick command: no clicking, no dragging, no dropping.

## Learn More

* Find basic documentation on using Homebrew-Cask in [USAGE.md](USAGE.md)
* Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
* Want to hack on our code? Also awesome! See [hacking.md](doc/development/hacking.md)
* More project-related details and discussion are available in the [documentation](doc)

## Reporting bugs

Like most pieces of software, Homebrew-Cask has bugs — and we are busy fixing them! If you find a new bug tell us about it, but before you do make sure the problem isn’t simply an outdated setup on your side, by following [this guide](doc/reporting_bugs/pre_bug_report.md).

If your issue persists, follow these instructions to the appropriate course of action:

* A cask fails to install:
  * [`curl` error](doc/reporting_bugs/a_cask_fails_to_install.md#curl-error)
  * [`Permission denied` error](doc/reporting_bugs/a_cask_fails_to_install.md#permission-denied-error)
  * [`sha256 mismatch` error](doc/reporting_bugs/a_cask_fails_to_install.md#sha256-mismatch-error)
  * [`source is not there` error](doc/reporting_bugs/a_cask_fails_to_install.md#source-is-not-there-error)
  * [`wrong number of arguments` error](doc/reporting_bugs/a_cask_fails_to_install.md#wrong-number-of-arguments-error)
  * [Unlisted reason](doc/reporting_bugs/a_cask_fails_to_install.md#unlisted-reason)
* [`brew cask list` shows wrong information](doc/reporting_bugs/brew_cask_list_shows_wrong_information.md)
* [`uninstall` wrongly reports cask as not installed](doc/reporting_bugs/uninstall_wrongly_reports_cask_as_not_installed.md)
* [`Error: Unknown command: cask` error](doc/reporting_bugs/error_unknown_command_cask.md)
* [My problem isn’t listed][bug_report]

## Requests

* Start an issue on GitHub following one of these templates:
  * [Feature request][feature_request]
  * [Cask request][cask_request]

## Questions? Wanna chat?

We’re really rather friendly! Here are the best places to talk about the project:

* If none of the templates above is appropriate, [open an issue](https://github.com/caskroom/homebrew-cask/issues/new).
* Join us (and [caskbot](https://github.com/passcod/caskbot)) on IRC at `#homebrew-cask` on Freenode
* Join us on [Gitter](https://gitter.im/caskroom/homebrew-cask)

## License
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)

[bug_report]: https://github.com/caskroom/homebrew-cask/issues/new?title=Bug%20report%3A%20%5Bsummarise%20the%20issue%20here%5D&body=Remember%20to%20follow%20the%20%5Bpre%20bug%20report%5D%28https%3A%2F%2Fgithub.com%2Fcaskroom%2Fhomebrew-cask%2Fblob%2Fmaster%2Fdoc%2Freporting_bugs%2Fpre_bug_report.md%29%20guide%20beforehand.%20Failure%20to%20do%20so%20might%20get%20your%20issue%20closed.%0A%0A%23%23%23%23%20Description%20of%20issue%0A%0A%5Binsert%20a%20detailed%20description%20of%20your%20issue%20here%5D%0A%0A%3Cdetails%3E%3Csummary%3EOutput%20of%20%60brew%20cask%20%3Ccommand%3E%20--verbose%60%3C%2Fsummary%3E%0A%0A%60%60%60%0A%5Bpaste%20output%20here%5D%0A%60%60%60%0A%3C%2Fdetails%3E%0A%0A%3Cdetails%3E%3Csummary%3EOutput%20of%20%60brew%20doctor%60%3C%2Fsummary%3E%0A%0A%60%60%60%0A%5Bpaste%20output%20here%5D%0A%60%60%60%0A%3C%2Fdetails%3E%0A%0A%3Cdetails%3E%3Csummary%3EOutput%20of%20%60brew%20cask%20doctor%60%3C%2Fsummary%3E%0A%0A%60%60%60%0A%5Bpaste%20output%20here%5D%0A%60%60%60%0A%3C%2Fdetails%3E%0A
[cask_request]: https://github.com/caskroom/homebrew-cask/issues/new?title=Cask%20request%3A%20%5Bapp%20name%20here%5D&body=%23%23%23%20Cask%20details%0A%0A%28Please%20fill%20out%20as%20much%20as%20possible%29%0A%0A%2A%2AName%2A%2A%3A%0A%0A%2A%2AHomepage%2A%2A%3A%0A%0A%2A%2ADownload%20URL%2A%2A%3A%0A%0A%2A%2ADescription%2A%2A%3A%0A
[feature_request]: https://github.com/caskroom/homebrew-cask/issues/new?title=Feature%20request%3A&body=%23%23%23%20Description%20of%20feature%2Fenhancement%0A%0A%0A%0A%23%23%23%20Justification%0A%0A%0A%0A%23%23%23%20Example%20use%20case%0A%0A%0A%0A
