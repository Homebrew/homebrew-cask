# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

Example: [`atom.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/atom.rb#L7)

There are a few different ways the `appcast` can be determined:

 * If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project_name}}/releases.atom`. (Example: [`electron.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/electron.rb#L7))

 * The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. (Example: [`glyphs.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/glyphs.rb#L6))

* HockeyApp URLs are of the form `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}{{something_else}}`. For the `appcast`, remove `{{something_else}}` (ending up with `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}`. (Example: [`canary.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/canary.rb#L7))

* DevMate appcasts resemble `https://updates.devmate.com/{{app_bundle_id}}.xml`. (Example: [screens.rb](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/screens.rb#L7))

* Sourceforge projects follow the form `https://sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. (Example: [`seashore.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/seashore.rb#L6))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out (e.g. a changelog HTML page). (Example: [`razorsql.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/razorsql.rb#L6))

The [`find_appcast`](https://github.com/Homebrew/homebrew-cask/blob/master/developer/bin/find_appcast) script can automatically identify some of these. You can run it with `"$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/find_appcast" '{{/path/to/software.app}}'` to find the `appcast` automatically.
