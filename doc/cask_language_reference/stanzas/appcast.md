# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

## Required Appcast Parameters

| key           | value       |
| ------------- | ----------- |
| `checkpoint:` | a string holding a custom checksum of the most recent appcast which matches the current Cask versioning. Use `curl --compressed "{{appcast_url}}" | sed 's|<pubDate>[^<]*</pubDate>||g' | shasum --algorithm 256` to calculate it.

Example: [`atom`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/atom.rb#L7#L8)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project}}/releases.atom`. (Example Cask: [`electron`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/electron.rb#L6#L7))

 * The popular update framework [Sparkle](http://sparkle-project.org) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. You can use the script [`find_sparkle_appcast`](https://github.com/caskroom/homebrew-cask/blob/master/developer/bin/find_sparkle_appcast) to add this automatically. (Example Cask: [`glyphs`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/glyphs.rb#L6#L7))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example Cask: [`shortcat`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/shortcat.rb#L6#L7))
