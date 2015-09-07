# Frequently Asked Questions

## What is a Cask?

A `Cask` is like a `Formula` in Homebrew except it describes how to download
and install a binary application.  To learn how to write a Cask, see
[CONTRIBUTING.md](../CONTRIBUTING.md).  For a complete reference, see
[CASK_LANGUAGE_REFERENCE.md](CASK_LANGUAGE_REFERENCE.md).

## What's the status of this project?  Where's it headed?

The idea is for each Cask to encapsulate and automate the story of how a given
application should be installed. Join us in building up a community-maintained
collection of Casks that is striving to become the standard way that hackers
install Mac apps.

## Can I contribute?

__Yes, yes, yes!__ Please fork/pull request to update Casks, add features and
clean up documentation! Anything you can do to help out is very welcome.

It's also [__pretty darn easy__ to create Casks](../CONTRIBUTING.md), so
please build more of them for the software you use. And if homebrew-cask doesn't
support the packaging format of your software, please [open an issue](https://github.com/caskroom/homebrew-cask/issues)
and we can get it working together.

The whole idea is to build a _community-maintained_ list of easily installable
packages, so the community part is important! Every little bit counts.

## Can I set up my own Cask Tap?

Yes! See [alternate_cask_taps.md](alternate_cask_taps.md).

## Can I install a version other than the English one?

Some applications such as Thunderbird or Firefox provides many localized versions. However, currently only English versions are provided in the main repository. Additional languages may be available in the [https://github.com/caskroom/homebrew-versions](homebrew-version repository). We are aiming to find a better system to manage multiple languages and versions.

## `brew cask list` shows that a package is installed, but when I try to do `brew cask uninstall`, it tells me that the package is not installed. Help!

This is a problem with the bookkeeping in the current implementation of Cask, which gets confused if a cask is updated after installation. For now, use the `brew cask uninstall --force` to uninstall these packages.

This issue is currently being addressed [here](https://github.com/caskroom/homebrew-cask/issues/4688) and [here](https://github.com/caskroom/homebrew-cask/issues/4678).
