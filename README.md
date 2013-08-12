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

## Let's try it!

    $ brew tap phinze/homebrew-cask
    $ brew install brew-cask
    $ brew cask install google-chrome
    ==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
    ==> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
    ==> Linking Google Chrome.app to /Users/phinze/Applications/Google Chrome.app

And there we have it.  Google Chrome installed with a few quick commands; no clicking, no dragging, no dropping.
    
    open ~/Applications/"Google Chrome.app"

## Learn More

 * Find basic documentation on using `homebrew-cask` in [USAGE.md](https://github.com/phinze/homebrew-cask/blob/master/USAGE.md)
 * Want to contribute? Awesome! See [CONTRIBUTING.md](https://github.com/phinze/homebrew-cask/blob/master/CONTRIBUTING.md)
 * More project related details and discussion available in [FAQ.md](https://github.com/phinze/homebrew-cask/blob/master/FAQ.md)

## Questions? Wanna chat?

We're really rather friendly! Here are the best places to talk about the project:

 * Start an [issue on GitHub](https://github.com/phinze/homebrew-cask/issues/new)
 * Join us on IRC, we're at `#homebrew-cask` on Freenode


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/phinze/homebrew-cask/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

