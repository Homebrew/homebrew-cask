# "To install, drag this icon..." no more!

Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management GUI Mac applications like Google Chrome and Adium.

`brew-cask` provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew` "[external
command](https://github.com/mxcl/homebrew/wiki/External-Commands)" called
`cask`.

# Let's try it!

## Get brew-cask

Pull down my work-in-progress Homebrew formula from https://gist.github.com/2010774 like so:

    $ brew install --HEAD https://gist.github.com/raw/2010774/8744c097cc9fdfda21fb4a07d140b23cfaf06b78/brew-cask.rb

## Now let's install our first Cask

Let's see if there's a Cask for Chrome:
    
    $ brew cask search chrome
    google-chrome
    
Cool, there it is.  Let's install it.

    $ brew cask install google-chrome
    Downloading...
    Success! google-chrome installed to /usr/local/Cellar/google-chrome/17.0.963.56

Now we have `Google Chrome.app` in our Cellar, let's get it linked somewhere useful:
    
    $ brew cask linkapps
    /Users/phinze/Applications/Google Chrome.app -> /usr/local/Cellar/google-chrome/17.0.963.56/Google Chrome.app
    
And there we have it.  Google Chrome installed with a few quick commands; no clicking, no dragging, no dropping.
    
    open "~/Applications/Google Chrome.app"

# What Casks are available?

Just run `brew cask search` with no arguments to get a list.

# How do I update brew-cask?

Currently you'll have to `brew rm brew-cask` and then run the command above to reinstall.

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
contain a `app` file.  I'd like to extend it to be able to handle `pkg` files
as well as the numerous other permutations of compression and distribution in
the wild (`app` inside `dmg` inside `zip`; folder inside `dmg`; etc.).

I plan to use the `Cask` model to allow per-project customization of behavior,
like Homebrew does with `Formula`.  This would allow weirdo applications like
Eclipse ("really you want me to drag that whole folder to `Applications`?") to
contain their complexity.

Each Cask will then encapsulate and automate the story of how a given
application should be installed.  If all goes well - I'm hoping to build up a
community-maintained collection of Casks that becomes the standard way that
hackers install Mac apps.

# Alfred Integration

I've been using Casks along with Alfred to great effect.  Just add
`/usr/local/Cellar` as a Search Scope in Alfred's preferences, and then
applications become available in Alfred immediately after a `brew cask
install`.  Your fingertips will thank you!
