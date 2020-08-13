First, let's tackle a common problem: do you have a `.curlrc` file? Check with `ls -A ~ | grep .curlrc` (if you get a result, the file exists). Those are a frequent cause of issues of this nature. Before anything else, remove that file and try again. If it now works, do not open an issue. Incompatible `.curlrc` configurations must be fixed on your side.

If, however, you do not have a `.curlrc` or removing it did not work, let’s see if the issue is upstream:

1. Go to the vendor’s website (`brew cask home {{cask_name}}`).
2. Find the download link for the app and click on it.

#### If the download works

The cask is outdated. Let’s fix it:

1. Look around the app’s website and find out what the latest version is. It will likely be expressed in the URL used to download it.
2. Take a look at the cask’s version (`brew cask _stanza version {{cask_name}}`) and verify it is indeed outdated.
  * If the app’s version is `latest`, it means the `url` itself is outdated. It will need to be changed to the new one.

Help us by [submitting a fix](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md#updating-a-cask). If you get stumped, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and where you’re having trouble.

#### If the download does not work

The issue isn’t in any way related to Homebrew Cask, but with the vendor or your connection.

Start by diagnosing your connection (try to download other casks, go around the web). If the problem is with your connection, try a website like [Ask Different](https://apple.stackexchange.com/) to ask for advice.

If you’re sure the issue is not with your connection, contact the app’s vendor and let them know their link is down, so they can fix it.

**Do not open an issue.**
