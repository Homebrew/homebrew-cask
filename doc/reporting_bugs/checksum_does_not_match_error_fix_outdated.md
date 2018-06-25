<sup><sub>[Go back](checksum_does_not_match_error_fix_icomplete.md)</sup></sub>

Let's bring the cask up to date. It’ll likely need a new version, but it’s possible the version has remained the same (happens occasionally when the vendor updates the app in place).

1. Go to the vendor’s website (`brew cask home {{cask_name}}`).
  * Alternatively, if it has an `appcast`, read that (`curl "$(brew cask _stanza appcast {{cask_name}})"`).
2. Find out what the latest version is. It will likely be expressed in the URL used to download it.
3. Take a look at the cask’s version (`brew cask _stanza version {{cask_name}}`) and verify it is indeed outdated.
    * If the app’s version is `latest`, it means the `url` itself is outdated. It will need to be changed to the new one.

If it is outdated, start by trying to [submit a fix](../../CONTRIBUTING.md#updating-a-cask). If you’re having trouble, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and why you’re having trouble submitting the update.
