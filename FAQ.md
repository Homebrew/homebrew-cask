# Frequently Asked Questions

## What is a Cask?

A `Cask` is like a `Formula` in Homebrew except it describes how to download
and install a binary application.

Casks currently have five required fields:

 * __url__: (required) points to binary distribution of the application
 * __homepage__: the same as Homebrew's - it doesn't do anything yet, but will be wired in
 * __version__: (required) describes the version of the application available at the URL
 * __sha1__: (required unless using no_checksum) SHA-1 Checksum of the file
 * __link__: (required for `.app`) indicates which file(s) should be linked into the Applications folder on installation
 * __install__: (required for `.pkg`) indicates which package should be installed
 * __prefpane__: (required for `.prefPane`) indicates which file(s) should be linked into the PreferencePanes folder on installation
 * __qlplugin__: (required for `.qlgenerator`) indicates which file(s) should be linked into the QuickLook folder on installation
 * __font__ : (required for fonts) indicates which file(s) should be linked into the Fonts folder on installation

and two optional fields:

* __uninstall__: (optional for `.pkg`) indicates how to uninstall a package
* __nested_container__: relative path to a nested inner container

## What's the status of this project?  Where's it headed?

The idea is for each Cask to encapsulate and automate the story of how a given
application should be installed. Join us in building up a community-maintained
collection of Casks that is striving to become the standard way that hackers
install Mac apps.

## Can I contribute?

__Yes, yes, yes!__ Please fork/pull request to update Casks, add features and
clean up documentation! Anything you can do to help out is very welcome.

It's also [__pretty darn easy__ to create Casks](CONTRIBUTING.md), so
please build more of them for the software you use. And if `brew-cask` doesn't
support the packaging format of your software, please [open an issue](https://github.com/phinze/homebrew-cask/issues)
and we can get it working together.

The whole idea is to build a _community-maintained_ list of easily installable
packages, so the community part is important! Every little bit counts.


## Why use Homebrew's Cellar? Why not just manage apps directly in Applications?

The short answer to this would be: for the same reason that Homebrew does not
install applications directly into /usr/local.

We don't know up-front precisely what files are going to be in the
dmg/zip/tgz/etc, so it's really helpful to have a place to dump all of them
safely, then iterate through and act on the files we care about. For an `.app` file
this may be symlinking it into `~/Applications` or `/Applications`, for a `.pkg` file
this might be running the installer. For a screensaver it may be symlinking it
into the appropriate directory for it to show up in System Preferences.

The reason we implement this project on top of Homebrew was based on a belief
that their methodology for managing applications has a lot of merit. We'd
prefer to try and work things so that we can keep ourselves Homebrewy both in
implementation and idioms. Trying to manage all of `~/Applications` would move
the project more towards a standalone system, which would mean reimplementing a
lot of the Homebrew stuff we lean on now.
