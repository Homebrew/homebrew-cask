homebrew-cask(1) -- A friendly binary installer for OS X
========================================================

## SYNOPSIS

`brew cask` command [options] [<Cask> ...]

## DESCRIPTION

Homebrew-cask is a tool for installing precompiled OS X binaries (such as
Applications) from the command line.  The user is never required to use the
graphical user interface.

## ALPHA-QUALITY SOFTWARE

Homebrew-cask works robustly enough that we welcome new users, but the
project is still in early development.  That means command names, option
names, and other aspects of this manual are still subject to change.

## FREQUENTLY USED COMMANDS

  * `install [--force]` <Cask>:
    Install <Cask>.

  * `uninstall [--force]` <Cask>:
    Uninstall <Cask>.

  * `search` <text> | /<regexp>/:
    Perform a substring search of Cask names for <text>.  If the text is
    delimited by slashes, it is interpreted as a Ruby regular expression.

    The Cask names returned by `search` are suitable as arguments for most
    other commands, such as `install` or `uninstall`.

## COMMANDS

  * `audit` [<Casks>]:
   Check <Casks> for installability.
   If no <Casks> are given on the command line, all Casks are audited.

  * `alfred`:
    Modify Alfred's search scope to include the Caskroom directory where
    Applications are stored.

  * `cat` <Cask>:
    Dump the given Cask definition file to the standard output.

  * `cleanup` [--outdated]:
    Clean up cached downloads and tracker symlinks.  With `--outdated`, only
    clean up cached downloads older than 10 days old.

  * `create` <Cask>:
    Generate a Cask definition file for the Cask named <Cask> and open a
    template for it in your favorite editor.

  * `doctor` or `dr`:
    Check for configuration issues.  Can be useful to upload as a gist for
    developers along with a bug report.

  * `edit` <Cask>:
    Open the given Cask definition file for editing.

  * `fetch` <Cask> [--force]:
    Fetch remote resources for the given Cask to the local cache.  With
    `--force`, force re-download even if the resources are already cached.

  * `home` or `homepage`:
    Open the project page <http://caskroom.io> in a browser.

  * `info` or `abv` <Cask>:
    Display information about <Cask>.

  * `install [--force]` <Cask>:
    Install <Cask>.  With `--force`, re-install even if the Cask appears to
    be already present.

    <Cask> is usually the name of a Cask as returned by `brew cask search`,
    but see [OTHER WAYS TO SPECIFY A CASK][] for variations.

  * `list` or `ls` [-1 | -l] [<Casks>]:
    Without any arguments, list all installed Casks.  With `-1`, always
    format the output in a single column.  With `-l`, give a more detailed
    listing.

    If <Casks> are given, list the staged files for <Casks>.

  * `uninstall [--force]` or `rm` or `remove` <Cask>:
    Uninstall <Cask>.  With `--force`, uninstall even if the Cask does
    not appear to be present.

    Note that `uninstall --force` is currently imperfect.  It will follow
    the `uninstall` instructions from *newest* Cask definition, even if
    the given Cask has changed since you installed it.  The result is that
    `uninstall --force` will always succeed in removing relevant files
    under `/opt/homebrew-cask`, but will sometimes fail to remove relevant
    installed files outside of `/opt/homebrew-cask`.  This issue is being
    addressed.

    `uninstall` without `--force` is also imperfect.  It may be unable to
    perform an `uninstall` operation if the given Cask has changed since you
    installed it.  This issue is being addressed.

  * `zap` <Cask>:
    Unconditionally remove _all_ files associated with <Cask>.

    Implicitly performs all actions associated with `uninstall`, even if
    the Cask does not appear to be currently installed.

    Removes all staged versions of the Cask distribution found under
    `/opt/homebrew-cask/Caskroom/<Cask>`

    If the Cask definition contains a `zap` stanza, performs additional
    `zap` actions as defined there, such as removing local preference
    files.  `zap` actions are variable, depending on the level of detail
    defined by the Cask author.

    **`zap` may remove resources which are shared between applications.**

  * `search` or `-S`:
    Display all Casks available for install.

  * `search` or `-S` <text> | /<regexp>/:
    Perform a substring search of Cask names for <text>.  If the text
    is delimited by slashes, it is interpreted as a Ruby regular
    expression.

  * `update`:
    For convenience, `brew cask update` is a synonym for `brew update`.

## OPTIONS

To make these options persistent, see the ENVIRONMENT section, below.

Some of these (such as `--prefpanedir`) may be subject to removal
in a future version.

  * `--force`:
    Force an install to proceed even when a previously-existing install
    is detected.

  * `--caskroom=<path>`:
    Location of the Caskroom, where all binaries are stored.  The default value is: `/opt/homebrew-cask/Caskroom`.

  * `--verbose`:
    Give additional feedback during installation.

  * `--appdir=<path>`:
    Target location for Application links.  The default value is `~/Applications`.

  * `--colorpickerdir=<path>`:
    Target location for Color Picker links.  The default value is `~/Library/Color Pickers`.

  * `--prefpanedir=<path>`:
    Target location for Preference Pane links.  The default value is `~/Library/Preference Panes`.

  * `--qlplugindir=<path>`:
    Target location for QuickLook Plugin links.  The default value is `~/Library/QuickLook`.

  * `--fontdir=<path>`:
    Target location for Font links.  The default value is `~/Library/Fonts`.

  * `--widgetdir=<path>`:
    Target location for Dashboard Widget links.  The default value is `~/Library/Widgets`.

  * `--servicedir=<path>`:
    Target location for Service links.  The default value is `~/Library/Services`.

  * `--input_methoddir=<path>`:
    Target location for Input Method links.  The default value is `~/Library/Input Methods`.

  * `--internet_plugindir=<path>`:
    Target location for Internet Plugin links.  The default value is `~/Library/Internet Plug-Ins`.

  * `--screen_saverdir=<path>`:
    Target location for Screen Saver links.  The default value is `~/Library/Screen Savers`.

  * `--no-binaries`:
    Do not link "helper" executables to `/usr/local/bin`.

  * `--binarydir=<path>`:
    Target location for "helper" executable links.  The default value is `/usr/local/bin`.

  * `--debug`:
    Output debugging information of use to Cask authors and developers.

## INTERACTION WITH HOMEBREW

Homebrew-cask is implemented as a external command for Homebrew.  That means
this project is entirely built upon the Homebrew infrastructure.  For
example, upgrades to the Homebrew-cask tool are received through Homebrew:
    brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

And updates to individual Cask definitions are received whenever you issue
the Homebrew command:
    brew update

## OTHER WAYS TO SPECIFY A CASK

Most homebrew-cask commands can accept a Cask name as an argument.  As
described above, a Cask name on the command line can take the form of:

  * A Cask name as returned by `brew cask search`, _eg_ `google-chrome`

Homebrew-cask also accepts three other forms for Cask names:

  * A fully-qualified Cask name which includes the Tap name, _eg_
    `caskroom/fonts/font-symbola`

  * A fully-qualified pathname to a Cask file, _eg_
    `/usr/local/Cellar/brew-cask/0.25.0/Casks/google-chrome.rb`

  * A `curl`-retrievable URI to a Cask file, _eg_
   `https://raw.github.com/caskroom/homebrew-cask/f54bbfaae0f2fa7210484f46313a459cb8a14d2f/Casks/google-chrome.rb`

## ENVIRONMENT

Homebrew-cask respects many of the environment variables used by the
parent command `brew`.  Please refer to the `brew`(1) man page for more
information.

Environment variables specific to homebrew-cask:

  * HOMEBREW\_CASK\_OPTS:
    This variable may contain any arguments normally used as options on
    the command-line. This is partiularly useful to make options persistent.
    For example, you might add to your .bash_profile or .zshenv something like:
    `export HOMEBREW_CASK_OPTS='--appdir=/Applications --caskroom=/etc/Caskroom'`.

## SEE ALSO

The homebrew-cask home page: <http://caskroom.io>.

The homebrew-cask GitHub page: <https://github.com/caskroom/homebrew-cask>.

Alfred.app: <http://www.alfredapp.com>

`brew`(1), `curl`(1)

## AUTHORS

Paul Hinze and Contributors.

Man page format based on `brew.1.md` from Homebrew.

## BUGS

We still have bugs -- and we are busy fixing them!  If you have a problem, don't
be shy about reporting it on our [GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open).

When reporting bugs, remember that homebrew-cask is an independent project from
Homebrew.  Do your best to direct bug reports to the appropriate project.  If
your command-line started with `brew cask`, bring the bug to us first!
