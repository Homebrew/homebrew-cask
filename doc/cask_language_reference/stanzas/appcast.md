# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

## Required Appcast Parameters

| key           | value       |
| ------------- | ----------- |
| `checkpoint:` | a string holding a custom checksum of the most recent appcast which matches the current Cask versioning. Use `curl --compressed --location --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36' "{{appcast_url}}" | /usr/bin/sed 's|<pubDate>[^<]*</pubDate>||g' | shasum --algorithm 256` to calculate it.

Example: [`atom`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/atom.rb#L7L8)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project}}/releases.atom`. (Example Cask: [`electron`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/electron.rb#L6L7))

 * The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. You can use the script [`find_sparkle_appcast`](https://github.com/caskroom/homebrew-cask/blob/master/developer/bin/find_sparkle_appcast) to add this automatically. (Example Cask: [`glyphs`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/glyphs.rb#L6L7))

* Sourceforge projects follow the form `https://downloads.sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. (Example Cask: [`seashore`](https://github.com/caskroom/homebrew-cask/blob/bcff548278a6776fc57439603442a8b23c76bd8b/Casks/seashore.rb#L6L7))

* HockeyApp URLs are of the form `https://rink.hockeyapp.net/api/2/apps/HEXADECIMAL_STRING<SOMETHING_ELSE>`. For the `appcast`, remove `<SOMETHING_ELSE>` (ending up with `https://rink.hockeyapp.net/api/2/apps/HEXADECIMAL_STRING`. (Example Cask: [`iconjar`](https://github.com/caskroom/homebrew-cask/blob/bcff548278a6776fc57439603442a8b23c76bd8b/Casks/iconjar.rb#L7L8))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example Cask: [`shortcat`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/shortcat.rb#L6L7))
