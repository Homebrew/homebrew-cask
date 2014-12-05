# Cask Token Reference

This document describes the algorithm implemented in the `generate_cask_token`
script, and covers detailed rules and exceptions which are not needed in
most cases.

 * [Purpose](#purpose)
 * [Finding the Simplified Name of the Vendor's Distribution](#finding-the-simplified-name-of-the-vendors-distribution)
 * [Converting the Simplified Name To a Token](#converting-the-simplified-name-to-a-token)
 * [Cask Filenames](#cask-filenames)
 * [Cask Headers](#cask-headers)
 * [Cask Token Examples](#cask-token-examples)

## Purpose

The purpose of these stringent conventions is to

 * unambiguously boil down the name of the software into a unique identifier
 * minimize renaming events
 * prevent duplicate submissions

The token itself should be

 * suitable for use as a filename
 * mnemonic

Details of software names and brands will inevitably be lost in the
conversion to a minimal token.  To capture the vendor's full name for a
distribution, use [`tags :name`](CASK_LANGUAGE_REFERENCE.md#tags-stanza-details) within a Cask.
`tags :name` accepts an unrestricted UTF-8 string.

## Finding the Simplified Name of the Vendor's Distribution

### Simplified Names of Apps

  * Start with the exact name of the Application bundle as it appears on disk,
    such as `Google Chrome.app`.

  * If the name uses letters outside A-Z, convert it to ASCII as described in
    [Converting to ASCII](#converting-to-ascii).

  * Remove `.app` from the end.

  * Remove from the end: the string "app", if the vendor styles the name
    like "Software App.app".  Exception: when "app" is an inseparable part of the
    name, without which the name would be inherently nonsensical, as in [rcdefaultapp.rb](../Casks/rcdefaultapp.rb).

  * Remove from the end: version numbers or incremental release designations such
    as "alpha", "beta", or "release candidate".  Strings which distinguish different
    capabilities or codebases such as "Community Edition" are currently accepted.
    Exception: when a number is not an incremental release counter, but a
    differentiator for a different product from a different vendor, as in [pgadmin3.rb](../Casks/pgadmin3.rb).

  * If the version number is arranged to occur in the middle of the App name,
    it should also be removed.  Example: [IntelliJ IDEA 13 CE.app](../Casks/intellij-idea-ce.rb).

  * Remove from the end: strings such as "Mac", "for Mac", "for OS X".
    These terms are generally added to ported software such as "MAME OS X.app".
    Exception: when the software is not a port, and "Mac" is an inseparable
    part of the name, without which the name would be inherently nonsensical,
    as in [PlayOnMac.app](../Casks/playonmac.rb).

  * Remove from the end: hardware designations such as "for x86", "32-bit", "ppc".

  * Remove from the end: software framework names such as "Cocoa", "Qt",
    "Gtk", "Wx", "Java", "Oracle JVM", etc.  Exception: the framework is the
    product being Casked: [java.rb](../Casks/java.rb).

  * Remove from the end: localization strings such as "en-US"

  * Pay attention to details, for example: `"Git Hub" != "git_hub" != "GitHub"`

  * If the result of that process is a generic term, such as "Macintosh Installer",
    try prepending the name of the vendor or developer, followed by a hyphen.
    If that doesn't work, then just create the best name you can, based on the
    vendor's web page.

  * If the result conflicts with the name of an existing Cask, make yours unique
    by prepending the name of the vendor or developer, followed by a hyphen.
    Example: [unison.rb](../Casks/unison.rb) and [panic-unison.rb](../Casks/panic-unison.rb).

  * Inevitably, there are a small number of exceptions not covered by the rules.
    Don't hesitate to [contact the maintainers](../../../issues) if you have a
    problem.

### Converting to ASCII

  * If the vendor provides an English localization string, that is preferred.
    Here are the places it may be found, in order of preference:

      * `CFBundleDisplayName` in the main `Info.plist` file of the app
        bundle

      * `CFBundleName` in the main `Info.plist` file of the app bundle

      * `CFBundleDisplayName` in `InfoPlist.strings` of an `en.lproj`
        localization directory

      * `CFBundleName` in `InfoPlist.strings` of an `en.lproj` localization
        directory

      * `CFBundleDisplayName` in `InfoPlist.strings` of an `English.lproj`
        localization directory

      * `CFBundleName` in `InfoPlist.strings` of an `English.lproj`
        localization directory

  * When there is no vendor localization string, romanize the name by
    transliteration or decomposition.

  * As a last resort, translate the name of the app bundle into English.

### Simplified Names of `pkg`-based Installers

  * The Simplified Name of a `pkg` may be more tricky to determine than that
    of an App.  If a `pkg` installs an App, then use that App name with the
    rules above.  If not, just create the best name you can, based on the
    vendor's web page.

### Simplified Names of non-App Software

  * Currently, rules for generating a token are not well-defined for
    Preference Panes, QuickLook plugins, and several other types of software
    installable by homebrew-cask.  Just create the best name you can, based
    on the filename on disk or the vendor's web page.  Watch out for
    duplicates.

    Non-app tokens should become more standardized in the future.

## Converting the Simplified Name To a Token

The token is the primary identifier for a package in our project. It's
the unique string users refer to when operating on the Cask.

To convert the App's Simplified Name (above) to a token:

  * convert all letters to lower case
  * expand the `+` symbol into a separated English word: `-plus-`
  * spaces become hyphens
  * hyphens stay hyphens
  * digits stay digits
  * delete any character which is not alphanumeric or hyphen
  * collapse a series of multiple hyphens into one hyphen
  * delete a leading or trailing hyphen
  * a leading number gets spelled out into English: `1password` becomes `onepassword`

We avoid defining Cask tokens in the repository which differ only by the
placement of hyphens.  Prepend the vendor name if needed to disambiguate
the token.

## Cask Filenames

Casks are stored in a Ruby file named after the token, with the file
extension `.rb`.

## Cask Headers

The token is also given in the header line for each Cask.

## Cask Token Examples

These illustrate most of the rules for generating a token:

App Name on Disk       | Simplified App Name | Cask Token       | Filename
-----------------------|---------------------|------------------|----------------------
`Audio Hijack Pro.app` | Audio Hijack Pro    | audio-hijack-pro | `audio-hijack-pro.rb`
`VLC.app`              | VLC                 | vlc              | `vlc.rb`
`BetterTouchTool.app`  | BetterTouchTool     | bettertouchtool  | `bettertouchtool.rb`
`LPK25 Editor.app`     | LPK25 Editor        | lpk25-editor     | `lpk25-editor.rb`
`Sublime Text 2.app`   | Sublime Text        | sublime-text     | `sublime-text.rb`
`1Password.app`        | 1Password           | onepassword      | `onepassword.rb`


# <3 THANK YOU TO ALL CONTRIBUTORS! <3
