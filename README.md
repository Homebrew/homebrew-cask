“To install, drag this icon...” no more!
========================================

Let's see if we can get the elegance, simplicity, and speed of Homebrew for the
installation and management GUI Mac applications like Google Chrome and Adium.

`brew-cask` provides a friendly homebrew-style CLI workflow for the
administration of Mac applications distributed as binaries.

It's implemented as a `homebrew`
“[external command](https://github.com/mxcl/homebrew/wiki/External-Commands)”
called `cask`.


Let's try it!
-------------

### Get brew-cask

First ensure you have Homebrew version ‘0.9’ or higher:

    $ brew --version
    0.9.3

Tap this repository and install the `brew-cask` tool:

    $ brew tap phinze/homebrew-cask
    $ brew install brew-cask

### Now let's install our first Cask

Let's see if there's a Cask for Chrome:
    
    $ brew cask search chrome
    google-chrome
    
Cool, there it is.  Let's install it.

    $ brew cask install google-chrome
    Downloading...
    ==> [google-chrome] linking Google Chrome.app
    Success! google-chrome installed to /usr/local/Caskroom/google-chrome/stable-channel

Now we have `Google Chrome.app` in our Caskroom, and in ~/Applications. And there we have
it. Google Chrome installed with a few quick commands; no clicking, no dragging, no dropping.
    
    open "~/Applications/Google Chrome.app"

#### What if I want Casks to be linked to /Applications instead?

You can add `--appdir=/Applications` to the `HOMEBREW_CASK_OPTS` environment variable (e.g
in your .bashrc). For a complete list of available options, see
[the wiki](https://github.com/phinze/homebrew-cask/wiki/CLI-Options).


What Casks are available?
-------------------------

Just run `brew cask search` with no arguments to get a list.


How do I update brew-cask?
--------------------------

Since this repository is a Tap, you'll pull down the latest Casks with a simple
`brew update`. When the `brew-cask` tool itself is updated, it will show in
`brew outdated` and you can upgrade it via the normal Homebrew workflow.


What is a Cask?
---------------

A `Cask` is like a `Formula` in Homebrew except it describes how to download
and install a binary application.  It looks like this:

```ruby
class Firefox < Cask
  url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/17.0.1/mac/en-US/Firefox%2017.0.1.dmg'
  homepage 'http://www.mozilla.org/en-US/firefox/'
  version '17.0.1'
  sha1 'a9888ce69440574fabff712549c8ff503fd1acb7'

  # Beta:
  devel do
    url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/18.0b3/mac/en-US/Firefox%2018.0b3.dmg'
    version '18.0b3'
    sha1 '31e383782b4fbbcbf3a1ef578d82cbf6861912cb'
  end

  # Nightly
  edge do
    url 'http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-20.0a1.en-US.mac.dmg'
  end
end
```

For details and a complete syntax guide, see
[Cask DSL on the wiki](https://github.com/phinze/homebrew-cask/wiki/Cask-DSL).


What's the status of this project?  Where's it headed?
------------------------------------------------------

It's really just a start at this point, but it works, and I've got big plans!

`brew-cask` currently understands how to install `dmg` and `zip` files that
contain a `.app` file. I'd like to extend it to be able to handle `pkg` files
as well as the numerous other permutations of compression and distribution in
the wild (`.app` inside `dmg` inside `zip`; folder inside `dmg`; etc.).

Each Cask will then encapsulate and automate the story of how a given
application should be installed. If all goes well - I'm hoping to build up a
community-maintained collection of Casks that becomes the standard way that
hackers install Mac apps.


Can I contribute?
-----------------

__Yes, yes, yes!__ Please fork/pull request to update Casks, to add features,
to clean up documentation--anything at all that you can do to help out is very
welcome.

It's also __pretty darn easy__ to create Casks, so please build more of them
for the software you use. And if `brew-cask` doesn't support the packaging
format of your software, please open an issue and we can get it working
together.

The whole idea is to build a _community-maintained_ list of easily installable
packages, so the community part is important! Every little bit counts.


Taps
----

You can add Casks to your existing (or new) taps: just create a directory named
`Casks` inside your tap, put your Casks there, and everything will just work.


Alfred Integration
------------------

I've been using Casks along with Alfred to great effect. Just add
`/usr/local/Caskroom` as a Search Scope in Alfred's preferences, and then
applications become available in Alfred immediately after a `brew cask
install`. Your fingertips will thank you.

Oh, and you can `brew cask install alfred` too! Not bad, eh?