Homebrew Casks
==============

This project's main development is at:
https://github.com/phinze/homebrew-cask


Installation Revamp
-------------------

This fork/branch is testing out a radically different way
of installing Casks. It develops ideas exposed in the
following issues:

- [#113](https://github.com/phinze/homebrew-cask/issues/113) — Uninstalling removes symlinks/aliases/shortcuts
- [#105](https://github.com/phinze/homebrew-cask/issues/105) — Features to help manage multiple .app folders
- [#99](https://github.com/phinze/homebrew-cask/issues/99)   — Spotlight visibility
- [#89](https://github.com/phinze/homebrew-cask/issues/89)   — ~~Don't make `brew doctor` complain~~ (done for unlinked kegs, not for formulae)
- [#72](https://github.com/phinze/homebrew-cask/issues/72)   — ~~Features for metadata~~
- [#38](https://github.com/phinze/homebrew-cask/issues/38)   — ~~Moar configuration~~
- [#30](https://github.com/phinze/homebrew-cask/pull/30)     — ~~Config: install/link path~~
- [#41](https://github.com/phinze/homebrew-cask/issues/41)   — ~~Better version management~~
- [#69](https://github.com/phinze/homebrew-cask/issues/69)   — Features for installing different types
- [#82](https://github.com/phinze/homebrew-cask/issues/82)   — ~~Checksums~~


Checksums
---------

`content_length` has been removed. In its stead, there are
`md5`, `sha1`, and `sha256` which all take a hexdigest string, e.g:
  
```ruby
class Candybar < Cask
  url 'http://panic.com/museum/candybar/CandyBar 3.3.4.zip'
  homepage 'http://panic.com/museum/candybar/'
  sha1 'f645e9da45a621415a07a7492c45923b1a1fd4d4'
end
```

`brew cask install` will warn if there is no checksum provided, and
error if the sums do not match.


Audit
-----

`brew cask audit` has had a facelift, and is now based on `brew audit`.
It checks whitespace, URLs, checksums, versions, and code style just
like Homebrew's one, albeit modified to fit Casks (a lot of stuff
related to compiling was removed).


Caskroom
--------

Casks are now installed in `$HOMEBREW_PREFIX/Caskroom/$name/$version/`
instead of in the Cellar. This stops Homebrew from complaining about
unlinked kegs, and from listing our casks on `brew list`.


Devel & Edge
------------

You can now specify alternate specs for *devel* (checksummed, versioned)
and *edge* (un-checksummed, unversioned) using blocks, e.g.

```ruby
class Firefox < Cask
  url 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/17.0.1/mac/en-US/Firefox%2017.0.1.dmg'
  homepage 'http://www.mozilla.org/en-US/firefox/'
  version '17.0.1'
  sha1 'a9888ce69440574fabff712549c8ff503fd1acb7'
  
  # Beta
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

If the top level `url` is unspecified, then the *edge* spec will be used, e.g.

```ruby
class FirefoxAurora < Cask
  homepage 'http://www.mozilla.org/en-US/firefox/aurora/'
  
  edge do
    url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-19.0a2.en-US.mac.dmg'
    version '19.0a2'
  end
end
```

### Version parsing

Additionally, we will attempt to parse the URL to get the version, so if
the correct version is within the URL, there is no need to specify it
explicitely using `version`. This also applies to *devel* specs.


Configuration
-------------

You can now configure some aspects of `brew cask`'s operation. You can set
options on the command:

    $ brew cask install adium --linkpath=/Applications

or you can set them in the `HOMEBREW_CASK_OPTS` environment variable:

```bash
# ~/.bashrc, somewhere at the end of the file

export HOMEBREW_CASK_OPTS='--linkpath=/Applications'
```

Command-line options override environment ones.

### Available options:

* `--linkpath=PATH` — Where applications are linked / aliased. Defaults to ~/Applications.
* `--edge` — Use the edge spec for that cask.
* `--devel` — Use the devel spec for that cask.
* `--stable` — Use the stable spec for that cask. Useful to override the ENV.
* `--[no-]ignore-edge-only` — Ignore “edge-only” problems when auditing casks. If you're
  working with `brew cask audit` a lot, I recommend you put it in your `HOMEBREW_CASK_OPTS`.


Cask info
---------

`brew cask info <a cask>` now gives:

```plain
adium: 1.5.3
http://www.adium.im/
/usr/local/Caskroom/adium/1.5.3 (2947 files, 69M)
https://github.com/phinze/cask/commits/master/Casks/adium.rb
```

And you can use `brew cask open <cask name>` to open its homepage.


Code maps
---------

I've also spent (and am still spending) some time creating
code maps to visualize how it all works. Here they are:

> ![Map 1](http://i.imgur.com/oBMyI.png)
> Vanilla phinze/cask v.0.5.4

- - - - -

> ![Map 5](https://f.cloud.github.com/assets/155787/3085/16d3675a-42a1-11e2-8de3-d7d237552f1b.png)
> Current situation