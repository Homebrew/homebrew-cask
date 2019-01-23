First, check if the problem was with your download. Delete the downloaded file (its location will be pointed out right under the `Actual` shasum line) and try again.

If the problem persists, the cask must be outdated. It’ll likely need a new version, but it’s possible the version has remained the same (happens occasionally when the vendor updates the app in place).

1. Go to the vendor’s website (`brew cask home {{cask_name}}`).
    * Alternatively, if it has an `appcast`, read that (`curl "$(brew cask _stanza appcast {{cask_name}})"`).
2. Find out what the latest version is. It will likely be expressed in the URL used to download it.
3. Take a look at the cask’s version (`brew cask _stanza version {{cask_name}}`) and verify it is indeed outdated. If it is:

Help us by [submitting a fix](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md#updating-a-cask). If you get stumped, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and where you’re having trouble.
