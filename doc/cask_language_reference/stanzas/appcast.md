# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

## Required Appcast Parameters

| key           | value       |
| ------------- | ----------- |
| `checkpoint:` | a string holding a custom checksum of the most recent appcast which matches the current Cask versioning. Use `brew cask _appcast_checkpoint --calculate "{{appcast_url}}"` to calculate it.

Example: [`atom.rb`](https://github.com/caskroom/homebrew-cask/blob/4d5a2dd2376f42c726148cfccaefe839f21e42ab/Casks/atom.rb#L7L8)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project_name}}/releases.atom`. (Example: [`electron.rb`](https://github.com/caskroom/homebrew-cask/blob/14f8510e4466f1409feb0de4a309c21f5395aefe/Casks/electron.rb#L7L8))

 * The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. You can use the script [`find_sparkle_appcast`](https://github.com/caskroom/homebrew-cask/blob/master/developer/bin/find_sparkle_appcast) by running the command `"$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/find_sparkle_appcast" '/full/path/to/software.app'` to find the `appcast` and `checkpoint` automatically. (Example: [`glyphs.rb`](https://github.com/caskroom/homebrew-cask/blob/e7cb7464e58b01b641da64f6016761411fbaef12/Casks/glyphs.rb#L6L7))

* Sourceforge projects follow the form `https://downloads.sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. (Example: [`seashore.rb`](https://github.com/caskroom/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/seashore.rb#L6L7))

* HockeyApp URLs are of the form `https://rink.hockeyapp.net/api/2/apps/HEXADECIMAL_STRING<SOMETHING_ELSE>`. For the `appcast`, remove `<SOMETHING_ELSE>` (ending up with `https://rink.hockeyapp.net/api/2/apps/HEXADECIMAL_STRING`. (Example: [`iconjar.rb`](https://github.com/caskroom/homebrew-cask/blob/190c98214e699be43f00ab91780d9184a96c7525/Casks/iconjar.rb#L7L8))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example: [`shortcat.rb`](https://github.com/caskroom/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/shortcat.rb#L6L7))
