# "To install, drag this icon..." no more!

Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management GUI Mac applications like Google Chrome and Adium.

`brew-cask` provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew` "[external
command](https://github.com/mxcl/homebrew/wiki/External-Commands)" called
`cask`.

# Let's try it!

## Install and set up brew-cask

This is still a little ornery.  You'll probably want to also see "Known
Ugliness" below.

    # be sure you have Homebrew installed first
    
    $ git clone https://github.com/phinze/brew-cask
    $ ln -s brew-cask/bin/brew-cask.rb ~/bin # or anywhere in your $PATH
    $ ln -s brew-cask/Casks /usr/local/Library/
    
## Now let's install something

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

# What is a Cask?

A `Cask` is like a `Formula` in Homebrew except it describes how to download
and install a binary application.

Casks have two important fields:

 * __url__: (required) points to binary distribution of the application
 * __version__: (required) describes the version of the application available at the URL

# What Casks are available?

Just run `brew cask search` with no arguments to get a list.

Here's the current list:

<pre>
alfred
dropbox
google-chrome
keepass-x
nv-alt
</pre>

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

# Known Ugliness

The interactions with Old Uncle Homebrew are a little funky at this point.  I'm
still playing with sharing Homebrew's Cellar (which we do in the current
implementation).  This means that `cask` applications show up in regular old
`brew list`, and can be `unlink`ed and `uninstall`ed by `brew`.  But `cask`
apps are not regular formula, so they won't show up in `brew search` and `brew
info` will not return anything for you.

So there's some coolness out of playing in @mxcl's playground, but also some
confusing behavior.  We'll see how it plays out.
