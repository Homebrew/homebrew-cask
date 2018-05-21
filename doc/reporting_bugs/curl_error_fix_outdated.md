<sup><sub>[Go back](curl_error_fix_vendor.md)</sup></sub>

Since the download started, it likely means the cask is outdated. Let's fix it:

1. Look around the app’s website and find out what the latest version is. It will likely be expressed in the URL used to download it.
2. Take a look at the cask’s version (`brew cask _stanza version {{cask_name}}`) and verify it is indeed outdated.
    * If the app’s version is `latest`, it means the `url` itself is outdated. It will need to be changed to the new one.

If it is outdated, start by trying to [submit a fix](../../CONTRIBUTING.md#updating-a-cask). If you’re having trouble, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and why you’re having trouble submitting the update.
