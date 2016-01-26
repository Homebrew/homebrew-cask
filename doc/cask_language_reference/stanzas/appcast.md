# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

## Required Appcast Parameters

| key           | value       |
| ------------- | ----------- |
| `:checkpoint` | a string holding a custom checksum of the most recent appcast which matches the current Cask versioning. Use `curl --compressed "{{appcast_url}}" | sed 's|<pubDate>[^<]*</pubDate>||g' | shasum --algorithm 256` to calculate it.

Example: [`atom`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/atom.rb#L7#L8)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project}}/releases.atom`. (Example Cask: [`electron`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/electron.rb#L6#L7))

 * The popular update framework [Sparkle](http://sparkle-project.org) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. You can use the script [`find_sparkle_appcast`](https://github.com/caskroom/homebrew-cask/blob/master/developer/bin/find_sparkle_appcast) to add this automatically. (Example Cask: [`glyphs`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/glyphs.rb#L6#L7))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example Cask: [`shortcat`](https://github.com/caskroom/homebrew-cask/blob/161f85b605e160ff96e7dd11732d85609e13dc51/Casks/shortcat.rb#L6#L7))

## When Appcast and Homepage Hostnames Differ, Add a Comment

When the hostnames of `appcast` and `homepage` differ, the discrepancy should be documented with a comment of the form:

```
# URL_HOSTNAME verified as official when first introduced to the cask
```

Examples can be seen in [insert examples].

These comments must be added so a user auditing the cask knows the appcast’s URL was verified by the Homebrew-Cask team as the one provided by the vendor, even though it may look unofficial or suspicious. It is our responsibility as Homebrew-Cask maintainers to verify both the `appcast` and `homepage` information when first added (or subsequently modified, apart from versioning). The exception to this rule is a `homepage` of `github.io` with a `appcast` of `github.com`, since we know this pair of hostnames is connected.

The comment doesn’t mean you should trust the source blindly, but we only approve casks in which users can easily verify its authenticity, either by visiting the `homepage` or inspecting the app’s `Info.plist`.
