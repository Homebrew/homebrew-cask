# "To install, drag this icon..." no more!

[![Build Status](https://travis-ci.org/phinze/homebrew-cask.png?branch=master)](https://travis-ci.org/phinze/homebrew-cask)
[![Code Climate](https://codeclimate.com/github/phinze/homebrew-cask.png)](https://codeclimate.com/github/phinze/homebrew-cask)

Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management GUI Mac applications like Google Chrome and Adium.

`brew-cask` provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew` "[external
command](https://github.com/mxcl/homebrew/wiki/External-Commands)" called
`cask`.

# Let's try it!

## Get brew-cask

First ensure you have Homebrew version '0.9' or higher:

    $ brew --version
    0.9.3

Tap this repository and install the `brew-cask` tool:

    $ brew tap phinze/homebrew-cask
    $ brew install brew-cask

## Now let's install our first Cask

Let's see if there's a Cask for Chrome:
    
    $ brew cask search chrome
    google-chrome
    
Cool, there it is.  Let's install it.

    $ brew cask install google-chrome
    Downloading...
    Success! google-chrome installed to /usr/local/Caskroom/google-chrome/stable-channel

Now we have `Google Chrome.app` in our Caskroom. Cool.

If you like, it's easy to get it linked somewhere more visible (see ["Alfred
Integration"](#alfred-integration) below for an idea that makes this step
unnecessary):
    
    $ brew cask linkapps
    /Users/phinze/Applications/Google Chrome.app -> /usr/local/Caskroom/google-chrome/17.0.963.56/Google Chrome.app
    
And there we have it.  Google Chrome installed with a few quick commands; no clicking, no dragging, no dropping.
    
    open "~/Applications/Google Chrome.app"

# What Casks are available?

Just run `brew cask search` with no arguments to get a list.

# How do I update brew-cask?

Since this repository is a Tap, you'll pull down the latest Casks with a simple
`brew-update`. When the `brew-cask` tool itself is updated, it will show in
`brew outdated` and you can upgrade it via the normal Homebrew workflow.

# What is a Cask?

A `Cask` is like a `Formula` in Homebrew except it describes how to download
and install a binary application.

Casks currently have three fields:

 * __url__: (required) points to binary distribution of the application
 * __version__: (required) describes the version of the application available at the URL
 * __homepage__: the same as Homebrew's - it doesn't do anything yet, but will be wired in

# What's the status of this project?  Where's it headed?

It's really just a start at this point, but it works, and I've got big plans!

`brew-cask` currently understands how to install `dmg` and `zip` files that
contain a `.app` file.  I'd like to extend it to be able to handle `pkg` files
as well as the numerous other permutations of compression and distribution in
the wild (`.app` inside `dmg` inside `zip`; folder inside `dmg`; etc.).

I plan to use the `Cask` model to allow per-project customization of behavior,
like Homebrew does with `Formula`.  This would allow weirdo applications like,
say, Eclipse ("you really want me to drag that whole *folder* to
`Applications`? ew.") to contain their complexity.

Each Cask will then encapsulate and automate the story of how a given
application should be installed.  If all goes well - I'm hoping to build up a
community-maintained collection of Casks that becomes the standard way that
hackers install Mac apps.

# Can I contribute?

__Yes, yes, yes!__ Please fork/pull request to update Casks, to add features,
to clean up documentation—anything at all that you can do to help out is very
welcome.

It's also [__pretty darn easy__ to create Casks (see wiki)][c1], so please
build more of them for the software you use. And if `brew-cask` doesn't
support the packaging format of your software, please [open an issue][c2]
and we can get it working together.

The whole idea is to build a _community-maintained_ list of easily installable
packages, so the community part is important! Every little bit counts.

[c1]: https://github.com/phinze/homebrew-cask/wiki/How-to-Contribute
[c2]: https://github.com/phinze/homebrew-cask/issues


# Taps

You can add Casks to your existing (or new) taps: just create a directory named
`Casks` inside your tap, put your Casks there, and everything will just work.

# Options

You can set options on the command-line and/or using the `HOMEBREW_CASK_OPTS` environment variable, e.g. (again, using google-chrome):

```bash
# This probably should happen in your ~/.{ba|z}shrc
$ export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Installs to /Applications
$ brew cask install google-chrome

# Trumps the ENV and installs to ~/Applications
$ brew cask install --appdir="~/Applications" google-chrome
```

# Alfred Integration

I've been using Casks along with Alfred to great effect.  Just add
`/usr/local/Caskroom` as a Search Scope in Alfred's preferences (you
may need to press Cmd-Shift-G in the file chooser), and then
applications become available in Alfred immediately after a
`brew cask install`.  Your fingertips will thank you.

With this setup, you don't actually need `brew cask linkapps` if you always
open your apps from Alfred. This means that everything stays nice and tidy.

Oh, and you can `brew cask install alfred` too! Not bad, eh?

# Why use the Caskroom? Why not just manage apps directly in `Applications`?

The short answer to this would be: for the same reason that Homebrew does not
install applications directly into `/usr/local`.

We don't know up-front precisely what files are going to be in the
dmg/zip/tgz/etc, so it's really helpful to have a place to dump all of them
safely then iterate through and act on the files we care about. For a `.app`
file this may be symlinking it into `~/Applications` or `/Applications`, for a
`.pkg` file this might be running the installer. For a screensaver it may be
symlinking it into the appropriate directory for it to show up in System
Preferences.

The reason I implemented this project on top of Homebrew was because I believe
that their methodology for managing applications has a lot of merit. I'd prefer
to try and work things so that we can keep ourselves Homebrewy both in
implementation and idioms. Trying to manage all of `~/Applications` would move
the project more towards a standalone system, which would mean reimplementing a
lot of the Homebrew stuff we lean on now.
