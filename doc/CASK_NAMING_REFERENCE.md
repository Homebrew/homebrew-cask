# Cask Naming Reference

This document describes the algorithm implemented in the `cask_namer`
script, and covers detailed rules and exceptions which are not needed in
most cases.

 * [Find the Canonical Name of the Developer's Distribution](#find-the-canonical-name-of-the-developers-distribution)
 * [Cask Name](#cask-name)
 * [Cask Class](#cask-class)
 * [Cask Naming Examples](#cask-naming-examples)

## Find the Canonical Name of the Developer's Distribution

### Canonical Names of Apps

  * Start with the exact name of the Application bundle as it appears on disk,
    such as `Google Chrome.app`
  * Translate the name into English if necessary
  * Remove `.app` from the end
  * Remove the term "app" from the end, if the developer styles the name like
    "Software App.app".  Exception: if the term "app" describes functionality,
    as in [rcdefaultapp.rb](../Casks/rcdefaultapp.rb).
  * Remove from the end: version numbers or incremental release designations such
    as "alpha", "beta", or "release candidate".  Strings which distinguish different
    capabilities or codebases such as "Community Edition" are currently accepted.
    Exception: when a number is not an incremental release counter, but a
    differentiator for a different product from a different vendor: [pgadmin3.rb](../Casks/pgadmin3.rb).
  * If the version number is arranged to occur in the middle of the App name,
    it should also be removed.  Example: [IntelliJ IDEA 13 CE.app](../Casks/intellij-idea-ce.rb).
  * Remove from the end: "mac", "for mac", "for OS X".  These terms are generally
    added to ports such as "MAME OS X.app".  Exception: when the software is not
    a port, but "Mac" is an inseparable part of the name or branding, as in
    'PlayForMac.app'
  * Remove from the end: hardware designations such as "for x86", "32-bit", "ppc".
  * Remove from the end: software framework names such as "Qt", "Gtk", "Wx", "Java", "Oracle JVM", etc.
    Exception: the framework is the product being Casked: [java.rb](../Casks/java.rb).
  * Remove from the end: localization strings such as "en-US"
  * Pay attention to details, for example: `"Git Hub" != "git_hub" != "GitHub"`
  * If the result of that process is something unhelpful, such as `Macintosh Installer`,
    then just create the best name you can, based on the developer's web page.
  * If the result conflicts with the name of an existing Cask, make yours unique
    by prepending the name of the vendor or developer, followed by a separator.
    Example: [unison.rb](../Casks/unison.rb) and [panic-unison.rb](../Casks/panic-unison.rb).
  * Inevitably, there are a small number of exceptions not covered by the rules.
    Don't hesitate to [contact the maintainers](../../../issues) if you have a problem.

### Canonical Names of `pkg`-based Installers

  * The Canonical Name of a `pkg` may be more tricky to determine than that
    of an App.  If a `pkg` installs an App, then use that App name with the
    rules above.  If not, just create the best name you can, based on the
    developer's web page.

### Canonical Names of non-App Software

  * Currently, naming rules are not well-defined for Preference Panes,
    QuickLook plugins, and other types of software installable by
    homebrew-cask.  Just create the best name you can, based on the filename
    on disk or the developer's web page.  Watch out for duplicates.


## Cask Name

The "Cask name" is the primary identifier for a package in our project. It's
the string people will use to interact with the Cask on their system.

To get from the App's canonical name to the Cask name:

  * convert all letters to lower case
  * hyphens stay hyphens
  * spaces become hyphens
  * digits stay digits
  * delete any character which is not alphanumeric or hyphen
  * collapse a series of multiple hyphens into one hyphen
  * delete a leading hyphen
  * a leading digit gets spelled out into English: `1password` becomes `onepassword`

Casks are stored in a Ruby file matching their name.  If possible, avoid creating
Cask files which differ only by the placement of hyphens.


## Cask Class

Casks are implemented as Ruby classes, so a Cask's "class" needs to be a
valid Ruby class name.

When converting a __Cask name__ to its corresponding __class name__:

  * convert to UpperCamelCase
  * wherever a hyphen occurs in the __Cask name__, remove the hyphen and
    create a case change in the __class name__


## Cask Naming Examples

These illustrate most of the naming rules:

App Name on Disk       | Canonical App Name | Cask Name          | Cask File             | Cask Class
-----------------------|--------------------|--------------------|-----------------------|------------------------
`Audio Hijack Pro.app` | Audio Hijack Pro   | `audio-hijack-pro` | `audio-hijack-pro.rb` | `AudioHijackPro`
`VLC.app`              | VLC                | `vlc`              | `vlc.rb`              | `Vlc`
`BetterTouchTool.app`  | BetterTouchTool    | `bettertouchtool`  | `bettertouchtool.rb`  | `Bettertouchtool`
`LPK25 Editor.app`     | LPK25 Editor       | `lpk25-editor`     | `lpk25-editor.rb`     | `Lpk25Editor`
`Sublime Text 2.app`   | Sublime Text       | `sublime-text`     | `sublime-text.rb`     | `SublimeText`
`1Password.app`        | 1Password          | `onepassword`      | `onepassword.rb`      | `Onepassword`


# <3 THANK YOU TO ALL CONTRIBUTORS! <3
