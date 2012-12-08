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
- [#89](https://github.com/phinze/homebrew-cask/issues/89)   — Don't make `brew doctor` complain
- [#72](https://github.com/phinze/homebrew-cask/issues/72)   — Features for metadata
- [#38](https://github.com/phinze/homebrew-cask/issues/38)   — Moar configuration
- [#30](https://github.com/phinze/homebrew-cask/pull/30)     — Config: install/link path
- [#41](https://github.com/phinze/homebrew-cask/issues/41)   — Better version management
- [#69](https://github.com/phinze/homebrew-cask/issues/69)   — Features for installing different types
- [#82](https://github.com/phinze/homebrew-cask/issues/82)   — Checksums


Checksums
---------

`content_length` has been removed. In its stead, there
are four new checksumming methods:

* `md5`, `sha1`, `sha256` all take a hexdigest string, e.g:
  
  ```ruby
  class Candybar < Cask
    url 'http://panic.com/museum/candybar/CandyBar%203.3.4.zip'
    homepage 'http://panic.com/museum/candybar/'
    version '3.3.4'
    sha1 'f645e9da45a621415a07a7492c45923b1a1fd4d4'
  end
  ```

* `no_checksum` takes no argument, and indicates there is no checksum
  for this cask. This is *not recommended*, and should only be used for
  casks that have no versioned downloads.
  
  ```ruby
  class Bartender < Cask
    url 'http://www.macbartender.com/Demo/Bartender.zip'
    homepage 'http://www.macbartender.com/'
    version 'latest'
    no_checksum
  end
  ```

`brew cask install` will complain if there is no sum provided (unless
`no_checksum` has been invoked), or if the sums do not match. It will
provide the computed checksum so the cask can be easily amended.


Audit
-----

`brew cask audit` has had a facelift, and is now based on `brew audit`.
It checks whitespace, URLs, and code style just like Homebrew's one,
albeit modified to fit Casks (a lot of compiling-related stuff was
removed).


Code maps
---------

I've also spent (and am still spending) some time creating
code maps to visualize how it all works. Here they are:

> ![Map 1](http://i.imgur.com/oBMyI.png)
> Vanilla phinze/cask v.0.5.4