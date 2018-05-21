# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

## Required Appcast Parameters

| key           | value       |
| ------------- | ----------- |
| `checkpoint:` | a string holding a custom checksum of the most recent appcast which matches the current Cask versioning. Use `brew cask _appcast_checkpoint --calculate "{{appcast_url}}"` to calculate it.

Example: [`atom.rb`](https://github.com/Homebrew/homebrew-cask/blob/4d5a2dd2376f42c726148cfccaefe839f21e42ab/Casks/atom.rb#L7L8)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project_name}}/releases.atom`. (Example: [`electron.rb`](https://github.com/Homebrew/homebrew-cask/blob/14f8510e4466f1409feb0de4a309c21f5395aefe/Casks/electron.rb#L7L8))

 * The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. (Example: [`glyphs.rb`](https://github.com/Homebrew/homebrew-cask/blob/e7cb7464e58b01b641da64f6016761411fbaef12/Casks/glyphs.rb#L6L7))

* HockeyApp URLs are of the form `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}{{something_else}}`. For the `appcast`, remove `{{something_else}}` (ending up with `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}`. (Example: [`iconjar.rb`](https://github.com/Homebrew/homebrew-cask/blob/190c98214e699be43f00ab91780d9184a96c7525/Casks/iconjar.rb#L7L8))

* DevMate appcasts resemble `https://updates.devmate.com/{{app_bundle_id}}.xml`. (Example: [vox.rb](https://github.com/Homebrew/homebrew-cask/blob/e705f44d58ca093d478f8bb07b6d3aa83ba2fce4/Casks/vox.rb#L7L8))

* Sourceforge projects follow the form `https://sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. (Example: [`seashore.rb`](https://github.com/Homebrew/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/seashore.rb#L6L7))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example: [`shortcat.rb`](https://github.com/Homebrew/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/shortcat.rb#L6L7))

The [`find_appcast`](https://github.com/Homebrew/homebrew-cask/blob/master/developer/bin/find_appcast) script can automatically identify some of these. You can run it with `"$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/find_sparkle_appcast" '{{/path/to/software.app'}}` to find the `appcast` and `checkpoint` automatically.
