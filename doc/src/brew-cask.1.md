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

  * `install` <Cask>:
    Install <Cask>.

  * `uninstall` <Cask>:
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

  * `checklinks`:
    Check for bad Cask links.

  * `cleanup` [--outdated]:
    Clean up cached downloads.  With `--outdated`, only clean up cached
    downloads older than 10 days old.

  * `create` <Cask>:
    Generate a Cask for the Caskfile named <Cask> and open a template for
    it in your favorite editor.

  * `doctor`:
    Check for configuration issues.  Can be useful to upload as a gist for
    developers along with a bug report.

  * `edit` <Cask>:
    Open the given Caskfile for editing.

  * `home`:
    Open the project page <http://caskroom.io> in a browser.

  * `home` <Cask>:
    Open the homepage for <Cask> in a browser.

  * `info` <Cask>:
    Display information about <Cask>.

  * `install [--force]` <Cask>:
    Install <Cask>.

    <Cask> is usually the name of a Cask as returned by `brew cask search`,
    but see [OTHER WAYS TO SPECIFY A CASK][] for variations.

  * `list` [<Casks>]:
    Without any arguments, list all installed Casks.

    If <Casks> are given, list the installed files for <Casks>.

  * `uninstall` <Cask>:
    Uninstall <Cask>.

  * `search`:
    Display all Casks available for install.

  * `search` <text> | /<regexp>/:
    Perform a substring search of Cask names for <text>.  If the text
    is delimited by slashes, it is interpreted as a Ruby regular
    expression.

## OPTIONS

Some of these options (such as `--prefpanedir`) may be subject to removal
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
    brew update && brew upgrade brew-cask

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
   `https://raw.github.com/phinze/homebrew-cask/f54bbfaae0f2fa7210484f46313a459cb8a14d2f/Casks/google-chrome.rb`

## ENVIRONMENT

Homebrew-cask respects many of the environment variables used by the
parent command `brew`.  Please refer to the `brew`(1) man page for more
information.

Environment variables specific to homebrew-cask:

  * HOMEBREW\_CASK\_OPTS:
    This variable may contain any arguments normally used as options on
    the command-line.  Example: `--appdir=/some/path/bar`.

## SEE ALSO

The homebrew-cask home page: <http://caskroom.io>.

The homebrew-cask GitHub page: <https://github.com/phinze/homebrew-cask>.

Alfred.app: <http://www.alfredapp.com>

`brew`(1), `curl`(1)

## AUTHORS

Paul Hinze and Contributors.

Man page format based on `brew.1.md` from Homebrew.

## BUGS

We still have bugs -- and we are busy fixing them!  If you have a problem, don't
be shy about reporting it on our [GitHub issues page](https://github.com/phinze/homebrew-cask/issues?state=open).

When reporting bugs, remember that homebrew-cask is an independent project from
Homebrew.  Do your best to direct bug reports to the appropriate project.  If
your command-line started with `brew cask`, bring the bug to us first!
