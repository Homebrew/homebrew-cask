# Homebrew Cask

_“To install, drag this icon…” no more!_

Homebrew Cask extends [Homebrew](https://brew.sh) and brings its elegance, simplicity, and speed to the installation and management of GUI macOS applications such as Atom and Google Chrome.

We do this by providing a friendly CLI workflow for the administration of macOS applications distributed as binaries.

[![Join us on https://discourse.brew.sh](https://img.shields.io/badge/Discourse-forum-blue.svg)](https://discourse.brew.sh)

## Let’s try it!

To start using Homebrew Cask, you just need [Homebrew](https://brew.sh/) installed.

<img src="https://i.imgur.com/bjr8UxZ.gif" width="547" alt="Installing and uninstalling Atom (animated gif)">

Slower, now:

```
$ brew cask install atom
==> Satisfying dependencies
==> Downloading https://github.com/atom/atom/releases/download/v1.35.1/atom-mac.zip
==> Downloading from https://github-production-release-asset-2e65be.s3.amazonaws.co
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'atom'.
==> Installing Cask atom
==> Moving App 'Atom.app' to '/Applications/Atom.app'.
==> Linking Binary 'apm' to '/usr/local/bin/apm'.
==> Linking Binary 'atom.sh' to '/usr/local/bin/atom'.
🍺  atom was successfully installed!
```

And there we have it. Atom installed with one quick command: no clicking, no dragging, no dropping.

## Learn More

* Find basic documentation on using Homebrew Cask in [USAGE.md](USAGE.md)
* Want to contribute a Cask? Awesome! See [CONTRIBUTING.md](CONTRIBUTING.md)
* Want to hack on our code? Also awesome! See [hacking.md](doc/development/hacking.md)
* More project-related details and discussion are available in the [documentation](doc)

## Reporting bugs

[**If you ignore this guide, your issue may be closed without review**](doc/faq/closing_issues_without_review.md).

Before reporting a bug, run `brew update-reset && brew update` and try your command again. This is a fix-all that will reset the state of all your taps, ensuring the problem isn’t an outdated setup on your side.

If your issue persists, [search for it](https://github.com/Homebrew/homebrew-cask/search?type=Issues) before opening a new one. If you find an open issue and have any new information, add it in a comment. If you find a closed issue, try the solutions there.

If the issue is still not solved, see the guides for common problems:

* [Examples of common errors and their solutions](doc/reporting_bugs/error_examples.md)
* [`curl` error](doc/reporting_bugs/curl_error.md)
* [`Permission denied` error](doc/reporting_bugs/permission_denied_error.md)
* [`Checksum does not match` error](doc/reporting_bugs/checksum_does_not_match_error.md)
* [`source is not there` error](doc/reporting_bugs/source_is_not_there_error.md)
* [`wrong number of arguments` error](doc/reporting_bugs/wrong_number_of_arguments_error.md)
* [The app can’t be opened because it is from an unidentified developer](doc/faq/the_app_cant_be_opened.md)
* [My problem isn’t listed](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md)

## Requests

* Cask requests will be automatically closed. If you want a cask added, [submit a pull request](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md#adding-a-cask).
* For a feature request, [use this template](https://github.com/Homebrew/homebrew-cask/issues/new?template=02_feature_request.md).

## Questions? Wanna chat?

We’re really rather friendly! Here are the best places to talk about the project:

* [Open an issue](https://github.com/Homebrew/homebrew-cask/issues/new/choose).
* Join us on [discourse.brew.sh (forum)](https://discourse.brew.sh)

## License
Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)
