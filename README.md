# Homebrew-Cask

_“To install, drag this icon…” no more!_

Homebrew-Cask extends [Homebrew](http://brew.sh) and brings its elegance, simplicity, and speed to the installation and management of GUI macOS applications such as Atom and Google Chrome.

We do this by providing a friendly Homebrew-style CLI workflow for the administration of macOS applications distributed as binaries.

[![Join the chat at https://gitter.im/caskroom/homebrew-cask](https://img.shields.io/badge/gitter-join%20chat-blue.svg)](https://gitter.im/caskroom/homebrew-cask)

## Let’s try it!

To start using Homebrew-Cask, you just need [Homebrew](http://brew.sh/) installed.

<img src="https://i.imgur.com/dPgmLax.gif" width="673" alt="Installing Atom (animated gif)">

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

[**If you ignore this guide, your issue may be closed without review**](doc/faq/closing_issues_without_review.md).

Before reporting a bug, run `brew update-reset && brew update` and try your command again. This will ensure the problem isn’t an outdated setup on your side. Note this command is a fix-all that will reset the state of all your taps, so if you have changes on those that you want to keep, deal with them first.

If your issue persists, search for it before opening a new one. If you find an open issue and have any new information not reported in the original, please add your insights. If you find a closed issue, try the solutions there.

 If the issue is still not solved, see the guides for common problems:

* A cask fails to install:
  * [`curl` error](doc/reporting_bugs/a_cask_fails_to_install.md#curl-error)
  * [`Permission denied` error](doc/reporting_bugs/a_cask_fails_to_install.md#permission-denied-error)
  * [`Checksum does not match` error](doc/reporting_bugs/a_cask_fails_to_install.md#checksum-does-not-match-error)
  * [`source is not there` error](doc/reporting_bugs/a_cask_fails_to_install.md#source-is-not-there-error)
  * [`wrong number of arguments` error](doc/reporting_bugs/a_cask_fails_to_install.md#wrong-number-of-arguments-error)
  * [Unlisted reason](doc/reporting_bugs/a_cask_fails_to_install.md#unlisted-reason)
* [`uninstall` wrongly reports cask as not installed](doc/reporting_bugs/uninstall_wrongly_reports_cask_as_not_installed.md)
* [`Error: Unknown command: cask` error](doc/reporting_bugs/error_unknown_command_cask.md)
* [My problem isn’t listed](https://github.com/caskroom/homebrew-cask/issues/new)

## Requests

Start an issue on GitHub following one of these templates:
* [Feature request][feature_request]

## Questions? Wanna chat?

We’re really rather friendly! Here are the best places to talk about the project:

* If none of the templates above is appropriate, [open an issue](https://github.com/caskroom/homebrew-cask/issues/new).
* Join us (and [caskbot](https://github.com/passcod/caskbot)) on IRC at `#homebrew-cask` on Freenode
* Join us on [Gitter](https://gitter.im/caskroom/homebrew-cask)

## License
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)

[feature_request]: https://github.com/caskroom/homebrew-cask/issues/new?title=Feature%20request%3A&body=%23%23%23%20Description%20of%20feature%2Fenhancement%0A%0A%0A%0A%23%23%23%20Justification%0A%0A%0A%0A%23%23%23%20Example%20use%20case%0A%0A%0A%0A
